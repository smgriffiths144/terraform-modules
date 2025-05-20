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
  default     = "default"
}

variable "q2_name" {
  description = "Name of the q. Must be unique."
  type        = string
  default     = "default"
}

variable "create" {
  description = "Whether to create the Cloudwatch log group"
  type        = bool
  default     = true
}

variable "name" {
  description = "A name for the log group"
  type        = string
  default     = null
}

variable "name_prefix" {
  description = "A name prefix for the log group"
  type        = string
  default     = null
}

variable "retention_in_days" {
  description = "Specifies the number of days you want to retain log events in the specified log group. Possible values are: 0, 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288 and 3653."
  type        = number
  default     = null

  validation {
    condition     = var.retention_in_days == null ? true : contains([0, 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, 3653], var.retention_in_days)
    error_message = "Must be 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, 3653 or 0 (zero indicates never expire logs)."
  }
}

variable "kms_key_id" {
  description = "The ARN of the KMS Key to use when encrypting logs"
  type        = string
  default     = null
}

variable "log_group_class" {
  description = "Specified the log class of the log group. Possible values are: STANDARD or INFREQUENT_ACCESS"
  type        = string
  default     = null
}

variable "skip_destroy" {
  description = "Set to true if you do not wish the log group (and any logs it may contain) to be deleted at destroy time, and instead just remove the log group from the Terraform state"
  type        = bool
  default     = null
}
