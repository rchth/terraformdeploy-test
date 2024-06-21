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
variable "public_network_access_enabled" {
  description = "The network config of the storage account."
  type        = string
}
