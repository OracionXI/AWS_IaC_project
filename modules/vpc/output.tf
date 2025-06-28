output "vpc_id" {
  description = "value of the VPC ID"
  value = aws_vpc.this.id
}

output "public_subnet_id" {
  description = "value of the public subnet ID"
  value = aws_subnet.public.id
}
