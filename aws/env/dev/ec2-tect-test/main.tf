
module "ec2_instance" {
  source = "../../../modules/vm"

  image           = var.image
  instance_type   = var.instance_type
  instance_count  = var.instance_count
  instance_name   = var.instance_name
  location        = var.location
}

module "lb" {
  source = "../../../modules/lb"

  load_balancer_name = "example-lb"  
}