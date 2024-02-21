output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "private_subnet_id" {
  description = "ID of the created private subnet"
  value       = module.vpc.private_subnet_id
}

output "public_subnet_id" {
  description = "ID of the created public subnet"
  value       = module.vpc.public_subnet_id
}

output "internet_gateway_id" {
  description = "ID of the created Internet Gateway"
  value       = aws_internet_gateway.igw.id
}