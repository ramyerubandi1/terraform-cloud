# Specify the provider
provider "aws" {
  region = "us-east-1" # Change to your desired region
}

# Create an S3 bucket
resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name # Use variable for bucket name
  acl    = var.bucket_acl  # Use variable for ACL

  # Enable bucket versioning if specified
  versioning {
    enabled = var.enable_versioning
  }

  # Tags for the bucket
  tags = {
    Name        = var.bucket_name
    Environment = var.environment
  }
}


