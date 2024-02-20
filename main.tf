module "vpc" {
  source = "./modules/vpc"

  cidr_block             = var.vpc_cidr_block
  vpc_name               = var.vpc_name
  private_subnet_cidr    = var.private_subnet_cidr
  public_subnet_cidr     = var.public_subnet_cidr
  availability_zone      = var.availability_zone
}

module "autoscaling" {
  source = "./modules/autoscaling"

  launch_configuration_name = var.launch_configuration_name
  image_id                  = var.image_id
  instance_type             = var.instance_type
  security_group_id         = var.security_group_id
  key_name                  = var.key_name
  root_volume_size          = var.root_volume_size
  root_volume_type          = var.root_volume_type
  autoscaling_group_name    = var.autoscaling_group_name
  min_size                  = var.min_size
  max_size                  = var.max_size
  desired_capacity          = var.desired_capacity
  subnet_ids                = [module.vpc.private_subnet_id]
  alarm_name                = var.alarm_name
  notification_arn          = var.notification_arn
}

module "load_balancer" {
  source = "./modules/load_balancer"

  load_balancer_name = var.load_balancer_name
  subnet_ids         = [module.vpc.public_subnet_id]
  target_group_name  = var.target_group_name
  target_group_port  = var.target_group_port
  vpc_id             = module.vpc.vpc_id
}

# variable "vpc_cidr_block" {}
# variable "vpc_name" {}
# variable "private_subnet_cidr" {}
# variable "public_subnet_cidr" {}
# variable "availability_zone" {}
# variable "launch_configuration_name" {}
# variable "image_id" {}
# variable "instance_type" {}
# variable "security_group_id" {}
# variable "key_name" {}
# variable "root_volume_size" {}
# variable "root_volume_type" {}
# variable "autoscaling_group_name" {}
# variable "min_size" {}
# variable "max_size" {}
# variable "desired_capacity" {}
# variable "alarm_name" {}
# variable "notification_arn" {}
# variable "load_balancer_name" {}
# variable "target_group_name" {}
# variable "target_group_port" {}

