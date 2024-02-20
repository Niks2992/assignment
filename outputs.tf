output "vpc_id" {
  value = module.vpc.vpc_id
}

output "private_subnet_id" {
  value = module.vpc.private_subnet_id
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "autoscaling_group_name" {
  value = module.autoscaling.autoscaling_group_name
}

output "load_balancer_dns_name" {
  value = module.load_balancer.load_balancer_dns_name
}
