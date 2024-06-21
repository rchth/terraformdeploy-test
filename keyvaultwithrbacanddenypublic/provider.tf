terraform {
  required_version = ">=0.12"

    backend "azurerm" {
    resource_group_name = "rg-test-for-tf"
    storage_account_name = "statestorage"
    container_name       = "state"
    key                  = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.96.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}
provider "azurerm" {
  features {}
}