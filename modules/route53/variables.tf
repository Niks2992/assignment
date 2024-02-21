variable "vpc_id" {
  description = "ID of the VPC"
}

variable "region" {
  description = "Region of the VPC"
}

variable "zone_name" {
  description = "Name of the Route 53 hosted zone"
  default = "example.com"
}