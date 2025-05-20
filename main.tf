resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  tags = var.tags
}


resource "aws_sqs_queue" "terraform_queue" {
  name = var.q_name
  #fifo_queue = true
}

