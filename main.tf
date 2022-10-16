variable "subscription_id" {}
variable "client_secret" {}
variable "client_id" {}
variable "tenant_id" {}

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

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
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