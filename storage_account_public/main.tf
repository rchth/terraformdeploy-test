module "storage_account" {
  source              = "../modules/storage-account"
  storage_account_name = var.storage_account_name
  resource_group_name  = var.resource_group_name
  location             = var.location
  public_network_access_enabled = var.public_network_access_enabled
}