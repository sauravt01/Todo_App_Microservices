terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "rg-devopsinsiders"
  #   storage_account_name = "twostates"
  #   container_name       = "tfstate"
  #   key                  = "dev.tfstate"
  # }
}

provider "azurerm" {
  features {}
  subscription_id = "331a949f-b38b-4711-a7fb-64ce9e156260"
}
