module "keyvault" {
  source = "../modules/keyvault"
  keyvault_name = var.keyvault_name
  sku  = var.sku
  public_network_access_enabled = var.public_network_access_enabled
  enable_rbac_authorization = var.enable_rbac_authorization
}