output "dev_instance_id" {
  value = module.ec2_dev.instance_id
}

output "dev_public_ip" {
  value = module.ec2_dev.public_ip
}

output "vpc_id" {
  value = module.vpc_dev.vpc_id
}

output "subnet_id" {
  value = module.vpc_dev.public_subnet_id 
}

output "s3_bucket_id" {
  value = module.s3_dev.s3_id
}
