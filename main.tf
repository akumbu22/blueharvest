 # Terraform Settings Block
terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"            
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource Block
resource "aws_instance" "ec2blueh" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
}
