resource "azurerm_virtual_network" "az_vm_vnet" {
  name                = var.resource_names[2]
  address_space       = ["10.0.0.0/16"]
  location            = "eastus"
  resource_group_name = "KubernetesTests"

}

resource "azurerm_subnet" "az_subnet" {
  name                 = var.resource_names[4]
  resource_group_name  = "KubernetesTests"
  virtual_network_name = azurerm_virtual_network.az_vm_vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}
resource "azurerm_network_interface" "az_network_interface" {
  name                = var.resource_names[5]
  location            = "eastus"
  resource_group_name = "KubernetesTests"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.az_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}
resource "azurerm_linux_virtual_machine" "azure_linux_vm" {
  name                = var.resource_names[3]
  resource_group_name = "KubernetesTests"
  location            = "eastus"
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = var.azure_linux_vm_password  
  # note: password is not actually store in variables.tf file. Best practice is to auth using SSH keys. 
  #disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.az_network_interface.id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "OpenLogic"
    offer     = "CentOS"
    sku       = "7_6gen2"
    version   = "latest"

  }

}
