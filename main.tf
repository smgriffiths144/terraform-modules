resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  tags = var.tags
}


resource "aws_sqs_queue" "terraform_queue" {
  name = var.q_name
  #fifo_queue = true
}

resource "aws_sqs_queue" "terraform_queue2" {
  name = var.q2_name
  #fifo_queue = true
}

resource "aws_cloudwatch_log_group" "this" {
  count = var.create ? 1 : 0

  name              = var.name
  name_prefix       = var.name_prefix
  retention_in_days = var.retention_in_days
  kms_key_id        = var.kms_key_id
  log_group_class   = var.log_group_class
  skip_destroy      = var.skip_destroy

  tags = var.tags
}