variable "load_balancer_name" {
  description = "Name for the load balancer"
}

variable "subnet_ids" {
  description = "IDs of the subnets"
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
