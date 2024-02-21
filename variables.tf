variable "acm_validation_record_name" {
  description = "Name of the ACM certificate validation record"
  default     = "test"
}

variable "acm_validation_record_type" {
  description = "Type of the ACM certificate validation record"
  default     = "CNAME"
}

variable "acm_validation_record_value" {
  description = "Value of the ACM certificate validation record"
  default     = "_11442d5734450df6fb8816e74df51d4c.mhbtsbpdnt.acm-validations.aws."
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name for the VPC"
  default = "mainvpc"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type    = list(string)
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zone" {
  type        = list(string)
  description = "Availability Zone for the subnets"
  default     = ["eu-central-1a", "eu-central-1b"]
}

variable "launch_configuration_name" {
  description = "Name for the launch configuration"
  default = "myconfig"
}

variable "image_id" {
  description = "ID of the AMI"
  default = "ami-03cceb19496c25679"
}

variable "instance_type" {
  description = "Instance type for the autoscaling group"
  default = "t2.micro"
}

variable "key_name" {
  description = "Name of the key pair"
  default = "aws"
}

variable "root_volume_size" {
  description = "Size of the root volume"
  default = "30"
}

variable "root_volume_type" {
  description = "Type of the root volume"
  default = "gp3"
}

variable "autoscaling_group_name" {
  description = "Name for the autoscaling group"
  default = "asg"
}

variable "min_size" {
  description = "Minimum size for the autoscaling group"
  default = "2"
}

variable "max_size" {
  description = "Maximum size for the autoscaling group"
  default = "5"
}

variable "desired_capacity" {
  description = "Desired capacity for the autoscaling group"
  default = "3"
}

variable "alarm_name" {
  description = "Name for the CloudWatch alarm"
  default = "cwalarm"
}

variable "notification_arn" {
  description = "ARN for the SNS notification"
  default = "arn:aws:sns:eu-central-1:659691402548" 
}

variable "load_balancer_name" {
  description = "Name for the load balancer"
  default = "alb"
}

variable "target_group_name" {
  description = "Name for the target group"
  default = "tgroup"
}

variable "target_group_port" {
  description = "Port for the target group"
  default = "8080"
}

variable "notification_topic_name" {
  description = "Name for the SNS notification topic"
  default = "mytopic" 
}

variable "acm_certificate_arn" {
  description = "ARN of the ACM certificate"
  default = "arn:aws:acm:eu-central-1:659691402548:certificate/079c83ee-1c8c-4551-8e0e-5a5a52c32e0c"
}

variable "zone_name" {
  description = "Name of the Route 53 hosted zone"
  default = "example.com"
}

variable "route53_zone_id" {
  description = "Route 53 hosted zone ID"
  type        = string
  default     = null
}
