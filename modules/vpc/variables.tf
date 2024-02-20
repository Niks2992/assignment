variable "cidr_block" {
  description = "CIDR block for the VPC"
}

variable "vpc_name" {
  description = "Name for the VPC"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
}

variable "availability_zone" {
  description = "Availability Zone for the subnets"
}
