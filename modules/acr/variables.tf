variable "acr_name" {
  description = "The name of the ACR to deploy"
  type        = string
}
variable "public_network_access_enabled" {
  description = "Is the ACR accessible from public network or not"
  type        = bool
}
variable "sku" {
  description = "SKU of the ACR"
  type        = string
}
