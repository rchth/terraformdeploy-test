resource "azurerm_container_registry" "acr" {
    name = var.acr_name
    resource_group_name = "rg-test-for-tf"
    location = "francecentral"
    sku = var.sku
    admin_enabled = true 
    public_network_access_enabled = var.public_network_access_enabled
}