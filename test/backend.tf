terraform {
  cloud {
    # The name of your Terraform Cloud organization.
    organization = "MangoBytes"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "cloud_resume_challenge_test"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.27.0"
    }
  }
}

resource "azurerm_resource_group" "rg-dev" {
  name     = var.resource_group
  location = "Central US"
}

resource "azurerm_static_site" "static-dev" {
  name                = var.static_site_name
  resource_group_name = var.resource_group
  location            = "Central US"
  sku_tier            = "Free"
  sku_size            = "Free"
}