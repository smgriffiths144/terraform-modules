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