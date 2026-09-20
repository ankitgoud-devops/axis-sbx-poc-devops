terraform {
  backend "azurerm" {
    resource_group_name  = "AXIS-SBX-POC-RG"
    storage_account_name = "axissbxpocst01"
    container_name       = "axixpoctfstate"
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