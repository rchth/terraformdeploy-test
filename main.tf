module "storage_account" {
  source              = "./modules/storage-account"
  storage_account_name = var.storage_account_name
  resource_group_name  = var.resource_group_name
  location             = var.location
}

resource "azurerm_key_vault" "keyvault" {
  name                        = var.key_vault_name
  location                    = var.key_vault_location
  resource_group_name         = var.key_vault_resource_group_name
  tenant_id                   = var.tenant_id
  sku_name                    = "standard"
}