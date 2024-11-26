# Output the bucket name
output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.example.bucket
}

# Output the bucket ARN
output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.example.arn
}

# Output the bucket region
output "bucket_region" {
  description = "The AWS region of the S3 bucket"
  value       = aws_s3_bucket.example.region
}
