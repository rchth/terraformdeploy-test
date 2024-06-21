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
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "${var.prefix}-aks"
  location            = var.location
  resource_group_name = "rg-test-for-tf"
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
    vnet_subnet_id = azurerm_subnet.aks_subnet.id
  }
  local_account_disabled = false

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}