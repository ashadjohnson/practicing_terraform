#I'm using a single configuration file to demonstrate my proficiency with creating a multiple aws instances with Terraform. 


provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "my-machine" {
  count = 4     
  ami = lookup(var.ec2_ami[us-east-2],var.region) 
  instance_type = var.instance_type 
  tags = {
    Name = var.prefix-"aws-machines${count.index}"
  }
}

variable "instance_type"{
    type = string 
    default = "t2-micro"
}

variable "ec2_ami" {
  type = map
  default = {
    us-east-2 = "ami-123" 
    us-west-1 = "ami-321" 
  }
}

variable "resource_prefix" {
    default = "terraform-created"
}

variable "region" {
  default = us-east-2
}


