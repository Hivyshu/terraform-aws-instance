# AWS EC2 Instance

This module creates ec2 instance

### Inputs

* ami_id = {optional} default to "ami-09c813fb71547fc4f"
* instance_type = {required} User must supply instance type either t3.micro, t3.small, or t3.medium
* sg_id = {required} user must supply a list of security group ids to attach EC2 instance

### Outputs

* public_ip = Public ip of the instance created
* private_ip = private ip of the instance created
* instance_id = instance ID created