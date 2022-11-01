terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.27.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "CRCSOX-Dev"
    storage_account_name = "CRCSOX"
    container_name       = "tfstate"
    key                  = "dev.teroidc.tfstate"
  }
}

provider "azurerm" {
  features {}
}