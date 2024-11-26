# Configure the provider (AWS)
provider "aws" {
  region = "us-west-2"  # Change this to your desired region
}

# Use the S3 bucket module from the public Terraform Registry
module "s3_bucket" {
  source        = "terraform-aws-modules/s3-bucket/aws"  # Module source
  bucket        = "my-unique-s3-bucket-name"             # Replace with your globally unique bucket name
  acl           = "private"                              # Bucket access control list (ACL)
  force_destroy = true                                   # Allow deleting non-empty buckets
  versioning    = { enabled = true }                     # Enable versioning
}
