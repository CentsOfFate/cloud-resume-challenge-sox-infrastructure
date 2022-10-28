terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.27.0"
    }
  }
}

resource "azurerm_static_site" "crc-sox" {
  name                = "CRCSOX-Dev"
  resource_group_name = var.static_site_name
  location            = "Central US"
  sku_tier            = "Free"
  sku_size            = "Free"
}