terraform {
  cloud {
    # The name of your Terraform Cloud organization.
    organization = "MangoBytes"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "cloud-resume-challenge"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.27.0"
    }
  }
}

resource "azurerm_resource_group" "crc-rg-dev" {
  name     = var.crc_resource_group_dev
  location = "Central US"
}

resource "azurerm_static_site" "crc-static-dev" {
  name                = var.crc_resource_group_dev
  resource_group_name = var.crc_static_site_dev
  location            = "Central US"
  sku_tier            = "Free"
  sku_size            = "Free"
}