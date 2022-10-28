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

resource "azurerm_resource_group" "dev-rg" {
  name     = var.resource_group
  location = "Central US"
}

resource "azurerm_static_site" "crc-sox" {
  name                = var.resource_group
  resource_group_name = var.static_site_name
  location            = "Central US"
  sku_tier            = "Free"
  sku_size            = "Free"
}