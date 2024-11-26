terraform {
  cloud {
    organization = "terraform-ram"  # Your Terraform Cloud organization name
    workspaces {
      name = "terraform"             # Your workspace name in Terraform Cloud
    }
  }
}

provider "aws" {
  region = "us-west-2"  # AWS region where you want to create the bucket
}

module "s3_bucket" {
  source        = "terraform-aws-modules/s3-bucket/aws"  # Using the S3 bucket module from Terraform AWS modules
  bucket        = "my-unique-s3-bucket-name"             # Replace with your globally unique S3 bucket name
  acl           = "private"                              # Access Control List (private, meaning only the owner can access)
  force_destroy = true                                   # Allows Terraform to delete non-empty buckets (be cautious)
  
  # Correct versioning configuration as a map
  versioning = {
    enabled = true                                       # Enable versioning for the S3 bucket
  }
}

# Correct output configuration
output "bucket_name" {
  value = module.s3_bucket.bucket_id  # Correct attribute for the bucket's name
}
