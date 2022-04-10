terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

#  Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}


/*

There are 3 types of Providers. 

  1. Terraform Official Providers: AWS, Azure, GCP
  2. Verified Providers: small companies
  3. Community Providers: randoms

  