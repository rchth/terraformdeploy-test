variable "storage_account_name1" {
  description = "The name of the storage account."
  type        = string
}

variable "resource_group_name1" {
  description = "The name of the resource group."
  type        = string
}
variable "storage_account_name2" {
  description = "The name of the storage account."
  type        = string
  default     = ""
}

variable "resource_group_name2" {
  description = "The name of the resource group."
  type        = string
  default     = ""
}

variable "location" {
  description = "The Azure region to deploy the resources in."
  type        = string
}
