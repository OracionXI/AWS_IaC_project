# Variables for the ec2 environment

variable "ami" {
  description = "AMI ID to use"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the key pair"
  type        = string
}

variable "public_key_path" {
  description = "Path to the public key file"
  type        = string
  default     = "~/.ssh/my-ec2-key.pub"
}

variable "name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

variable "env" {
  description = "Environment tag"
  type        = string
}

# Variables for S3 bucket module
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

# Variables for VPC module
variable "vpc_cidr" {
  type = string
}

variable "public_subnet_cidr" {
  type = string
}

variable "private_subnet_cidr" {
  type = string
}

variable "availability_zone_public" {
  type = string
}

variable "availability_zone_private" {
  type = string
}

variable "name_prefix" {
  type = string
}

variable "my_ip" {
  type = string
}
