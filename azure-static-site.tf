terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.27.0"
    }
  }
}

provider "azurerm" {
   features {}
}

resource "azurerm_resource_group" "dev-rg" {
  name     = "development-resource-group"
  location = "Central US"
}

resource "azurerm_static_site" "crc-sox" {
  name                = "crc-sox"
  resource_group_name = "development-resource-group"
  location            = "Central US"
  sku_tier            = "Free"
  sku_size            = "Free"
}