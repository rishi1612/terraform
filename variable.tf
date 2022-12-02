variable "cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "az" {
  type    = string
  default = "ap-northeast-1a"
}

variable "instance_ami" {
  type    = string
  default = "ami-00c5eee15c96a7182"

}

variable "ec2_type" {
  type    = string
  default = "t2.micro"

}

variable "instance_key" {
  type    = string
  default = "devopsproject"

}

variable "vpc_name" {
  type    = string
  default = "tf-vpc"

}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "sg_name" {
  type    = string
  default = "batman-sg"

}

