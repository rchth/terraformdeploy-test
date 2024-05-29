module "storage_account" {
  source              = "./module/storage-account"
  storage_account_name = "deploymentfromgithub123"
  resource_group_name  = "rg-test-for-tf"
  location             = "francecentral"
}