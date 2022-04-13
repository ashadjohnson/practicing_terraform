# practing_terraform

This repo is to showcase what I've learned while preparing for the HashiCorp Certified: Terraform Associate exam. This repo contains several configuration files. 

The "main.tf" file is where most of the resources are configured with the arguments in the code block body. 

The "variables.tf" is self explanitory, but the values in this file will be passed to the other config files. 

The "provider.tf" file configures the plugin/provider that's intended to be used. 

The "azure_linux_vm.tf" file provisions a vnet, a subnet, a NIC, and a linux vm running CentOS.

The "azure_aks.tf" provisions a K8s cluster with 3 nodes.

The "backend.tf" file authenticates to Azure to initialize remote state for the Terraform to avoid versioning conflicts. Terraform's State Locking (Explained Below) does not support version control systems like GitHub so you are forced to use a cloud storage solution, like S3 or Azure Storage. Once the backend has been initialized, the terrform.tfstate file. 

State Locking - State Locking ensures that the State file does not become correpted by multiple operations trying to update the file at the same time.

I understand the concept of Terraform Modules and having seperate directories for different services but that has not been fully implemented in this repo. I have, however, I included a sub-directory that contains a single configuration file that provisions an AWS EC2 instance.


# Please excuse any grammatical errors in this repo. 