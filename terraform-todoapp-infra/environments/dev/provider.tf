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
  subscription_id = "acd9510d-7e29-433d-8504-d10d34dba654"
}
