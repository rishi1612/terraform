resource "aws_instance" "web" {
  ami     = "ami-01ebac1e76247c6f2"
  instance_type = var.ec2_type
  key_name = var.instance_key
  subnet_id = var.subnet_id
  vpc_security_group_ids = [ var.sg_id ]
  associate_public_ip_address = true

  tags = {
    Name = "WebServer"

  }
}

