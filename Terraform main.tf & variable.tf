provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "abc" {
count = var.instance_count
ami = var.ami_id
instance_type = var.instance_type
tags = {
Name = "terra-server"
}
}


===============================================


variable "instance_count" {
description = "*"
type = number
default = 3
}

variable "instance_type" {
description = "*"
type = string
default = "t2.micro"
}

variable "ami_id" {
description = "*"
type = string
default = "ami-0f34c5ae932e6f0e4"
}
