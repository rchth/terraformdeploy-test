resource "azurerm_virtual_network" "aks_vnet" {
  name                = "${var.prefix}-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = "rg-test-for-tf"
}

resource "azurerm_subnet" "aks_subnet" {
  name                 = "${var.prefix}-subnet"
  resource_group_name  = "rg-test-for-tf"
  virtual_network_name = azurerm_virtual_network.aks_vnet.name
  address_prefixes     = ["10.0.0.0/23"]
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "${var.prefix}-aks"
  location            = var.location
  resource_group_name = "rg-test-for-tf"
  dns_prefix          = var.dns_prefix

  sku_tier = "Free"
  network_profile {
    network_plugin = "azure"
    network_policy = "azure"
    service_cidr = "10.0.4.0/24"
    dns_service_ip = "10.0.4.10"
    docker_bridge_cidr = "172.17.0.1/16"
  }  

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
    vnet_subnet_id = azurerm_subnet.aks_subnet.id
  }
  local_account_disabled = var.local_account_disabled
  azure_active_directory_role_based_access_control {
    managed = true
    admin_group_object_ids = [var.azure_admin_group_object_id]
    azure_rbac_enabled = var.isazurerbacenabled
    }    

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}