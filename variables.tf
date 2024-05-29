variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region to deploy the resources in."
  type        = string
}
variable "key_vault_name" {
  description = "The name of the Key Vault."
  type        = string
}

variable "key_vault_location" {
  description = "The Azure region to deploy the Key Vault."
  type        = string
}

variable "key_vault_resource_group_name" {
  description = "The name of the resource group for the Key Vault."
  type        = string
}
variable "tenant_id" {
  description = "The name of the resource group for the Key Vault."
  type        = string
}