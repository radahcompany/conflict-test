terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.36.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-sumit1"
    storage_account_name = "stgsumit2112"
    container_name       = "sumitcont212"
    key                  = "cluster.tfstate"
    subscription_id = "193a80b5-b916-4c17-b06d-cfc310d07a2c"
    
  }
}

provider "azurerm" {
 features {}
 subscription_id = "3a734e32-021d-4243-89ff-c3495e6aa4da"
}