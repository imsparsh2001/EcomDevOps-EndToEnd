terraform {
  backend "azurerm" {
    resource_group_name  = "rg_tfstate"  
    storage_account_name = "terraformbackend22195"                      
    container_name       = "tfstate"                      
    key                  = "dev.terraform.tfstate"        
  }
}

