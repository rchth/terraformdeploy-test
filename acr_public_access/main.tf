module "acr" {
  source = "../modules/acr"
  name = var.acr_name
  sku  = var.sku
  public_network_access_enabled = var.public_network_access_enabled
}