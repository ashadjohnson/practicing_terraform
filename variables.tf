variable "resource_names" {
  type    = list(string)
  default = ["terraform-created-azure_key_vault", "terraform-created-azure-aks", "terraform-created-azure-vnet", "terraform-created-azure-vm", "terraform-created-azure-subnet", "terraform-created-azure-nic"]
  condition = substr(var.resource_names) == "terraform-created-"
  error_message = "The resource name should begin with 'terraform-created-'" 
}