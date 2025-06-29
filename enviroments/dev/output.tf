output "vpc_id" {
  value = module.vpc_dev.vpc_id
}

output "public_subnet_id" {
  value = module.vpc_dev.public_subnet_id 
}

output "private_subnet_id" {
  value = module.vpc_dev.private_subnet_id
}

# output "dev_instance_id" {
#   value = module.ec2_dev.instance_id
# }

# output "dev_public_ip" {
#   value = module.ec2_dev.public_ip
# }

# output "s3_bucket_id" {
#   value = module.s3_dev.s3_id
# }


