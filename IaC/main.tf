terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tstate"
    storage_account_name = "tstate11753"
    container_name       = "tstate"
    key                  = "terraform.tfstate"
  }
}

# Configure the Azure provider
provider "azurerm" {
  # The "feature" block is required for AzureRM provider 2.x. 
  # If you are using version 1.x, the "features" block is not allowed.
  features {}
}

resource "azurerm_resource_group" "terraform-az-devops" {
  name     = "tf-az-demo"
  location = "eastus"
}