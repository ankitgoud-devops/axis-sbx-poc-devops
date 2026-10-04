terraform {
  backend "azurerm" {
    resource_group_name  = "backend_RG"
    storage_account_name = "backstorage1"
    container_name       = "bluedrum"
    key                  = "poc.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.6.0"
    }
  }
}

provider "azurerm" {
  features {}
}