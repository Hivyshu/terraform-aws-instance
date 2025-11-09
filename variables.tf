variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "this is the AMI used for creating ec2 instance"
  
}
variable "instance_type" {
    type = string
    #default = ""
    description = "Instance type used for creating ec2 instance"
    validation {
        condition = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
        error_message = "please select t3.micro,small or medium"
    }
}

variable "sg_ids" {
    type = list
    #default = ""
    description = "sg_id used for creating ec2 instance"
}

#optional
variable "tags" {
    type = map
    default = {}
  }