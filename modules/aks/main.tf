resource "azurerm_virtual_network" "aks_vnet" {
  name                = "${var.prefix}-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.aks.location
  resource_group_name = azurerm_resource_group.aks.name
}

resource "azurerm_subnet" "aks_subnet" {
  name                 = "${var.prefix}-subnet"
  resource_group_name  = azurerm_resource_group.aks.name
  virtual_network_name = azurerm_virtual_network.aks_vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "${var.prefix}-aks"
  location            = azurerm_resource_group.aks.location
  resource_group_name = azurerm_resource_group.aks.name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
    vnet_subnet_id = azurerm_subnet.aks_subnet.id
  }
  
  # Authentication configuration
  dynamic "role_based_access_control" {
    for_each = var.authentication_method == "Local" ? [1] : []
    content {
      enabled = true
      azure_active_directory {
        managed = false
      }
    }
  }

  dynamic "role_based_access_control" {
    for_each = var.authentication_method == "EntraID_Kubernetes_RBAC" ? [1] : []
    content {
      enabled = true
      azure_active_directory {
        managed = true
        admin_group_object_ids = [var.azure_admin_group_object_id]
      }
    }
  }

  dynamic "role_based_access_control" {
    for_each = var.authentication_method == "EntraID_Azure_RBAC" ? [1] : []
    content {
      enabled = true
      azure_active_directory {
        managed = true
        admin_group_object_ids = [var.azure_admin_group_object_id]
        azure_rbac_enabled = true
      }
    }
  }  

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}