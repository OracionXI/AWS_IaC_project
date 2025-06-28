variable "ami" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the key pair"
  type        = string
}

variable "public_key" {
  description = "The public key to use for the EC2 instance"
  type        = string
}

variable "env" {
  description = "Environment tag"
  type        = string
}

variable "name" {
  description = "Instance name"
  type        = string
}

variable "vpc_id" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "my_ip" {
  type = string
}