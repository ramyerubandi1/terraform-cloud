terraform {
  cloud {
    organization = "terraform-ram"

    workspaces {
      name = "terraform"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "example-bucket-ram-2024" # Replace with a globally unique name
  acl    = "private"

  tags = {
    Name        = "example-bucket"
    Environment = "Development"
  }
}
