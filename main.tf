provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}

data "azurerm_client_config" "current" {}


resource "azurerm_key_vault" "keyvault" {
  name                        = "Terraform-Created-Vault2"
  location                    = "WestUs"
  resource_group_name         = "KubernetesTests"
  enabled_for_disk_encryption = true
  tenant_id                   = "33ca18f2-4d84-430c-bc62-3155d7fbcc83"
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"
}

resource "local_file" "test" {
  content = "the content of is 123"
  filename = "test.txt"
}



