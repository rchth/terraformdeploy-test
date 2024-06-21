variable "location" {
  description = "The location of the resource group."
  type        = string
}

variable "prefix" {
  description = "Prefix for naming resources."
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster."
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the default node pool."
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "The size of the Virtual Machine."
  type        = string
  default     = "Standard_B2s"
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {}
}

variable "azure_admin_group_object_id" {
  description = "The Object ID of the Azure AD group that will have admin access to the AKS cluster."
  type        = string
  default     = ""
}

variable "local_account_disabled" {
  description = "Enable or disable local authent"
  type        = bool  
}
variable "isrbacenabled" {
  description = "The Object ID of the Azure AD group that will have admin access to the AKS cluster."
  type        = bool
}
variable "isazurerbacenabled" {
  description = "The Object ID of the Azure AD group that will have admin access to the AKS cluster."
  type        = bool
}