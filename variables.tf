variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "default-example-bucket"
}

variable "bucket_acl" {
  description = "The ACL to apply to the S3 bucket"
  type        = string
  default     = "private" # Default is private
}

variable "enable_versioning" {
  description = "Enable versioning for the bucket"
  type        = bool
  default     = false
}

variable "environment" {
  description = "The environment (e.g., dev, prod)"
  type        = string
  default     = "dev"
}
