# terraform DOES NOT destroy resources not managed by terraform
terraform {
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
  ami           = "ami-08d70e59c07c61a3a" # Ubuntu 16.04 AMI (changing IAM will force replacement)
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
