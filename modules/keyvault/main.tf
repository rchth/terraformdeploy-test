resource "azurerm_key_vault" "keyvault" {
    name = var.keyvault_name
    resource_group_name = "rg-test-for-tf"
    location = "francecentral"
    sku_name = var.sku
    enable_rbac_authorization = var.enable_rbac_authorization
    public_network_access_enabled = var.public_network_access_enabled
}