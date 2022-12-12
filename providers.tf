terraform {
  required_version = ">=1.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.35.0"
    }
  }

  cloud {
    organization = "MangoBytes"
    workspaces {
      name = "cloud-resume-challenge-sox-infrastructure"
    }
  }
}

provider "azurerm" {
  features {}
}