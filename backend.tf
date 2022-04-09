terraform {
  backend "azurerm" {
    storage_account_name = "cs710032001bb11db02"
    container_name       = "terraform-backend"
    key                  = "prod.terraform.tfstate"
    #access_key           =  "foobar"
  }
}

# This file authenticates to an Azure Storage Account to set up a remote state. 
# I removed the hardcoded an access key and used env variable to authenticate to cloud storage.
# --export ARM_ACCESS_KEY="<storage account access key value>"
backend.tf
