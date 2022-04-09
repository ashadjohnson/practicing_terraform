# practing_terraform

This repo is to showcase what I've learned while preparing for the HashiCorp Certified: Terraform Associate exam. This repo will contain several configuration files.

The "main.tf" file is where all of the resources are configured with the arguments in the code block body. 

The "variables.tf" is self explanitory, but the values in this file will be passed to the other config files. 

The "provider.tf" file configures the plugin/provider that's intended to be used. 

The "backend.tf" file authenticates to Azure to initialize remote state for the Terraform to avoid versioning conflicts. Terraform's State Locking (Explained Below) does not support version control systems like GitHub so you are forced to use a cloud storage solution, like S3 or Azure Storage. 

State Locking - (In my words, please inform me if incorrect) State Locking ensures that the State file does not become correpted by multiple operations trying to update the file at the same time.


