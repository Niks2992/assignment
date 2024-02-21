
variable "load_balancer_name" {
  description = "Name for the load balancer"
}

variable "subnet_ids" {
  description = "IDs of the subnets"
  type        = list(string)
}

variable "target_group_name" {
  description = "Name for the target group"
}

variable "target_group_port" {
  description = "Port for the target group"
}

variable "vpc_id" {
  description = "ID of the VPC"
}

variable "acm_certificate_arn" {
  description = "ARN of the ACM certificate"
}

variable "route53_zone_id" {
  description = "Route 53 hosted zone ID"
  type        = string
}
