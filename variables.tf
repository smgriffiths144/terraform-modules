# Input variable definitions

variable "bucket_name" {
  description = "Name of the s3 bucket. Must be unique."
  type        = string
}

variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}

variable "q_name" {
  description = "Name of the q. Must be unique."
  type        = string
  default     = "default-q-name"
}