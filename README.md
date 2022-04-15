#Terraform Associate prep 

This repo is to showcase what I've learned while preparing for the HashiCorp Certified: Terraform Associate exam. This repo contains several configuration files. 



#File/Directory Descriptions 

"main.tf" - where most of the resources are configured with the arguments in the code block body. 
"variables.tf" - self explanitory, but the values in this file will be passed to the other config files. 
"provider.tf" - configures the plugin/provider that's intended to be used. 
"azure_linux_vm.tf" - provisions a vnet, a subnet, a NIC, and a linux vm running CentOS.
"azure_aks.tf" - provisions a K8s cluster with 3 nodes.
"backend.tf" - authenticates to Azure to initialize remote state for Terraform to avoid versioning conflicts. Terraform's State Locking (Explained Below) does not support version control systems like GitHub. You are forced to use a cloud storage solution, such as AWS S3 or Azure Storage to store the remote state file. Once the backend has been initialized, the terrform.tfstate file can be removed. 
"commands.txt" - a simple text file that lists basic terrform commands. 

#Note:

I did not included any state files in this repo as they were too large for GitHub. 

State Locking ensures that the State file does not become correpted by multiple operations attempting to update the file at the same time.

I understand the concept of Terraform Modules and having seperate directories for different services/resources. Modules are ideal for complex real-world infrastucture but I have not implemented them in this repo. I have, however, included a sub-directory that contains a single configuration file that provisions an AWS EC2 instance. 

It is my plan to continue to update this repo as my journey with Terraform and continues.

Please excuse any grammatical errors in this repo. 