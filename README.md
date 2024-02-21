#  Terraform AWS Web Application Deployment Module

This Terraform module deploys a web application on AWS following the specified design requirements.

## Design Requirements

1. *VPC*: The module includes a VPC enabling future growth and scale.
2. *Subnets*: Public and private subnets are created. The public subnet is used for load balancers, and the private subnet is used for compute.
3. *Security Groups*: A security group scheme is designed to support the minimal set of ports required for communication. End-users only contact the load balancers, and underlying instances are accessed for management purposes.
4. *Load Balancer*: AWS-generated load balancer hostname is used for requests to the public-facing web application.
5. *Autoscaling Group*: An autoscaling group is created utilizing the latest AWS AMI.
6. *Storage*: Instances in the autoscaling group contain both root volumes to store the application/services and secondary volumes to store any log data bound from /var/log.
7. *Web Server*: A web server of choice is included.
8. *Ansible Configuration*: Web application configuration using Ansible is defined in the launch configuration and/or user data script.
 

## Additional Features

- *Self-signed Certificate*: A self-signed certificate for test.example.com is created and used with the load balancer. This DNS resolves internally within the VPC network with Route 53 private hosted zone.
- *Data Encryption*: All data is encrypted at rest.
- *Security Best Practices*: Web servers are designed to be managed without logging in with the root key.
- *CloudWatch Alarms*: CloudWatch alarms indicate when the application is experiencing any issues.
- *Auto Scaling*: Autoscaling group automatically adds and removes nodes based on load.

 
## Usage

hcl
module "web_application" {
  source = "git::https://github.com/yourusername/terraform-aws-web-application.git"

  vpc_id             = "vpc-12345678"
  region             = "us-east-1"
  public_subnet_ids  = ["subnet-12345678", "subnet-87654321"]
  private_subnet_ids = ["subnet-23456789", "subnet-98765432"]
  ami_id             = "ami-12345678"
  key_name           = "mykey"
  instance_type      = "t2.micro"
  web_server_type    = "nginx"
  # Add more variables as needed
}


## Inputs
hcl
vpc_id: (Required) The ID of the VPC.
region: (Required) The AWS region.
public_subnet_ids: (Required) List of IDs of the public subnets.
private_subnet_ids: (Required) List of IDs of the private subnets.
ami_id: (Required) The ID of the AMI.
key_name: (Required) The name of the EC2 key pair.
instance_type: (Required) The type of EC2 instance.
web_server_type: (Required) The type of web server to be installed (e.g., nginx, apache).
