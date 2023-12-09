resource "aws_instance" "ec2_instance" {
  ami           = var.image
  instance_type = var.instance_type
  count         = var.instance_count
  tags = {
    Name = var.instance_name
  }
}
