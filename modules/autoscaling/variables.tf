variable "launch_configuration_name" {
  description = "Name for the launch configuration"
}

variable "image_id" {
  description = "ID of the AMI"
}

variable "instance_type" {
  description = "Instance type for the autoscaling group"
}

variable "security_group_id" {
  description = "ID of the security group"
}

variable "key_name" {
  description = "Name of the key pair"
}

variable "root_volume_size" {
  description = "Size of the root volume"
}

variable "root_volume_type" {
  description = "Type of the root volume"
}

variable "autoscaling_group_name" {
  description = "Name for the autoscaling group"
}

variable "min_size" {
  description = "Minimum size for the autoscaling group"
}

variable "max_size" {
  description = "Maximum size for the autoscaling group"
}

variable "desired_capacity" {
  description = "Desired capacity for the autoscaling group"
}

variable "subnet_ids" {
  description = "IDs of the subnets"
}

variable "alarm_name" {
  description = "Name for the CloudWatch alarm"
}

variable "notification_arn" {
  description = "ARN for the SNS notification"
}