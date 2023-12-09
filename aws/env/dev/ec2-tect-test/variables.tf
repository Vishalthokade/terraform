variable "image" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-02a2af70a66af6dfb" 
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  default     = "t2.micro" 
}

variable "instance_count" {
  description = "Number of instances to create"
  default     = 1 
}

variable "instance_name" {
  description = "Name for the EC2 instance"
  default     = "ec2-example"  
}

variable "location" {
  description = "AWS region/availability zone"
  default     = "ap-south-1"  
}

variable "access_key" {
 description = "access_key"
}
variable "secret_key" {
description = "secret_key"
}