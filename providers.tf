terraform {
  required_version = ">=1.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.27.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "crc-dev"
    storage_account_name = "crcterra"
    container_name       = "tfstate"
    key                  = "prod.teroidc.tfstate"
  }
}

provider "azurerm" {
  features {}
}