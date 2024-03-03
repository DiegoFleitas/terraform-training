terraform {
  # NOTE: older versions of terraform DO NOT support the "cloud" block (>=1.1.0) 
  # previous versions use the "remote" backend block
  cloud { # terraform cloud backend. we'll need to login ex: $ terraform login
    organization = "diego-fleitas-org"

    workspaces {
      name = "Example-Workspace"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
