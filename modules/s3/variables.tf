variable "bucket_name" {
  description = "The name of the S3 bucket to create."
  type        = string
}

variable "bucket_tag" {
  description = "A map of tags to assign to the S3 bucket."
  type = string
}

variable "bucket_status" {
  description = "The versioning status of the S3 bucket (Enabled/Disabled)."
  type        = string
}

