# Output variable definitions

output "arn" {
  description = "ARN of the bucket"
  value       = aws_s3_bucket.s3_bucket.arn
}

output "name" {
  description = "Name (id) of the bucket"
  value       = aws_s3_bucket.s3_bucket.id
}

output "q_arn" {
  description = "ARN of the q"
  value       = aws_sqs_queue.terraform_queue.arn
}

/*
Outputs from CloudWatch LOg Group
*/
output "cloudwatch_log_group_name" {
  description = "Name of Cloudwatch log group"
  value       = try(aws_cloudwatch_log_group.this[0].name, "")
}

output "cloudwatch_log_group_arn" {
  description = "ARN of Cloudwatch log group"
  value       = try(aws_cloudwatch_log_group.this[0].arn, "")
}
