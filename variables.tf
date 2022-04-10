variable "resource_names" {
  type    = list(string)
  default = ["terraform-created-azure_key_vault", "terrraform-created-azure-aks", "terrform-created-azure-vnet", "terraform-created-azure-vm", "terraform-created-azure-subnet", "terraform-created-azure-nic"]
}