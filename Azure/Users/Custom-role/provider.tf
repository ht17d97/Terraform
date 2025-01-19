terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "3.1.0"
    }
  }
}

provider "azurerm" {
  subscription_id = 
  tenant_id       = 
  client_id       = 
  client_secret   = 
  features {
  }
}

provider "azuread" {
  tenant_id       = 
  client_id       = 
  client_secret   = 
}
