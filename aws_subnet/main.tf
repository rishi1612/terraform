resource "aws_subnet" "public-sub" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr
  availability_zone = var.az

  tags = {
    Name = "public-sub"
  }
}