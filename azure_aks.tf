resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.resource_names[1]
  location            = "eastus"
  resource_group_name = "KubernetesTests"
  dns_prefix          = "eastakscluster"

  default_node_pool {
    name       = "default"
    node_count = 3
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Test"
  }
}

