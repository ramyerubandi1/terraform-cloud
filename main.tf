# Specify the provider
provider "aws" {
  region = "us-east-1" # Change to your desired region
}

# Create an S3 bucket
resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name # Use variable for bucket name

  # Tags for the bucket
  tags = {
    Name        = var.bucket_name
    Environment = var.environment
  }
}

# Apply ACL to the S3 bucket using a separate resource
resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.example.bucket
  acl    = var.bucket_acl
}

# Apply versioning to the S3 bucket using a separate resource
resource "aws_s3_bucket_versioning" "example" {
  bucket = aws_s3_bucket.example.bucket

  versioning {
    enabled = var.enable_versioning
  }
}

