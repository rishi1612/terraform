module "instance" {
  source    = "../modules/aws_instance"
  ec2_type  = var.ec2_type
  subnet_id = module.subnet-public.subenet_id
  sg_id     = module.web-sg.sg_id
}


module "my-vpc" {
  source   = "../modules/aws_vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
}

module "web-sg" {
  source  = "../modules/aws_sg"
  vpc_id  = module.my-vpc.vpc_id
  sg_name = var.sg_name
}

module "subnet-public" {
  source = "../modules/aws_subnet"
  vpc_id = module.my-vpc.vpc_id
  cidr   = var.cidr
  az     = var.az
}