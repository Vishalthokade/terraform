variable "image" {
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
}

variable "instance_count" {
  description = "Number of instances to create"
}

variable "instance_name" {
  description = "Name for the EC2 instance"
}

variable "location" {
  description = "AWS region/availability zone"
}
