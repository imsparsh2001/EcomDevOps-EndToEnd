terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 4.8.0"
    }
  }
  
#   required_version = ">=1.9.0"
}

provider "azurerm" {
    features {
      
    }
    subscription_id = "030e3d0f-43d8-4e00-9a9a-53866101278a"
  
}

