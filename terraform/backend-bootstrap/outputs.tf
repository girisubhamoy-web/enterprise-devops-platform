output "state_bucket_name" {
  description = "Name of the Terraform remote state S3 bucket"
  value       = aws_s3_bucket.terraform_state.bucket
}

output "state_bucket_arn" {
  description = "ARN of the Terraform remote state S3 bucket"
  value       = aws_s3_bucket.terraform_state.arn
}
