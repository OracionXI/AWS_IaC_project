module "vpc_dev" {
  source              = "../../modules/vpc"
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone_public   = var.availability_zone_public
  availability_zone_private  = var.availability_zone_private
  name_prefix         = var.name_prefix
  my_ip               = var.my_ip
}

# module "ec2_dev" {
#   source        = "../../modules/ec2"
#   ami           = var.ami
#   instance_type = var.instance_type
#   key_name      = var.key_name
#   public_key    = file(var.public_key_path)
#   name          = var.name
#   env           = var.env
#   vpc_id        = module.vpc_dev.vpc_id
#   subnet_id     = module.vpc_dev.public_subnet_id
#   my_ip         = var.my_ip
# }

# module "s3_dev" {
#   source        = "../../modules/s3"
#   bucket_name   = var.bucket_name
#   bucket_tag    = var.bucket_tag
#   bucket_status = var.bucket_status
# }
