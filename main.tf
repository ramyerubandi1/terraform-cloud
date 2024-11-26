terraform {
  cloud {
    organization = "terraform-ram"
    workspaces {
      name = "terraform"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

module "s3_bucket" {
  source        = "terraform-aws-modules/s3-bucket/aws"
  bucket        = "my-unique-s3-bucket-name"
  acl           = "private"
  force_destroy = true
  versioning    = true
}

output "bucket_name" {
  value = module.s3_bucket.bucket
}
