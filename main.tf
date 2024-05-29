module "storage_account1" {
  source              = "./modules/storage-account"
  storage_account_name = var.storage_account_name1
  resource_group_name  = var.resource_group_name1
  location             = var.location1
}

module "storage_account2" {
  source              = "./modules/storage-account"
  storage_account_name = var.storage_account_name2
  resource_group_name  = var.resource_group_name2
  location             = var.location2
}