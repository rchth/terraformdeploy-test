module "storage_account" {
  source              = "./modules/storage-account"
  storage_account_name = "deploymentfromgithub123"
  resource_group_name  = "rg-test-for-tf"
  location             = "francecentral"
}