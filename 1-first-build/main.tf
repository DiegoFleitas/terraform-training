terraform {            # terraform block
  required_providers { # required_providers block
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" { # provider block
  region = "us-west-2"
}

resource "aws_instance" "app_server" { # resource block (type) (name). ID: type.name ex: aws_instance.app_server
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
