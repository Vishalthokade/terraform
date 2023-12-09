resource "aws_lb" "load_balancer" {
  name = var.load_balancer_name
  subnet_mapping {
    subnet_id     = "subnet-057eebf0f284a9845" // Specify your subnet IDs here
  }

  subnet_mapping {
    subnet_id     = "subnet-0112ce10b90b8f0bd" // Specify another subnet ID in a different AZ
  }
}
