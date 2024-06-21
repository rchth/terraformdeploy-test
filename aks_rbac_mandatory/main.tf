module "azurerm_kubernetes_cluster"  {
  source              = "../modules/aks"    
  location            = var.location
  prefix              = .var.prefix
  dns_prefix          = var.dns_prefix
  node_count          = var.node_count
  vm_size             = var.vm_size
  authentication_method = var.authentication_method
  azure_admin_group_object_id = "870104dc-08b5-4226-a7b1-cd65b16018bd"
}