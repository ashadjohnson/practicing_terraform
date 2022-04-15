#Terraform Associate prep 

This repo is to showcase what I've learned while preparing for the HashiCorp Certified: Terraform Associate exam. This repo contains several configuration files. 


#File/Directory Descriptions 

"main.tf" - several resources are configured with the arguments in the code block body. 

"variables.tf" - the values in this file will be passed as variables to the other configuration files. 

"provider.tf" - configures the plugin/provider that's intended to be used. 

"azure_linux_vm.tf" - provisions a vnet, a subnet, a NIC, and a Linux VM running CentOS.

"azure_aks.tf" - provisions a Kubernetes cluster with 3 nodes.

"backend.tf" - authenticates to Azure to initialize remote state for Terraform to avoid versioning conflicts. Terraform's State Locking (Explained Below) does not support version control systems like GitHub. You are forced to use a cloud storage solution, such as AWS S3 or Azure Storage to store the remote state file. Once the backend has been initialized, the terrform.tfstate file can be removed. 

"commands.txt" - a simple text file that lists basic terrform commands. 

#Note:

State files were not included in this repo as they exceeded the file size threshold for a standard tier GitHub account. 

State Locking ensures that the State file does not become correpted by multiple operations attempting to update the file at the same time.

I understand the concept of Terraform Modules and having seperate directories for different services/resources. Modules are ideal for complex real-world infrastucture but I have not implemented them in this repo. I have, however, included a sub-directory that contains a single configuration file that provisions an AWS EC2 instance. 

It is my plan to update this repo as my journey with Terraform continues.

Please excuse any grammatical errors in this repo. 