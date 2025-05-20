resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  tags = var.tags
}

module "sqs" {
  source  = "terraform-aws-modules/sqs/aws"

  name = var.q_name

  fifo_queue = true

  tags = {
    Environment = "dev"
  }
}

resource "aws_sqs_queue" "terraform_queue2" {
  name = var.q_name
  fifo_queue = true
}

