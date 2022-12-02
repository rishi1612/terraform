resource "aws_instance" "cloud" {
  ami           = "ami-01ebac1e76247c6f2"
  instance_type = "t2.micro"
  count = 2

  tags = {
    Name = var.name[count.index]
  }

}



variable "name" {
  type    = list(string)
  default = ["one", "two", "three"]

}

