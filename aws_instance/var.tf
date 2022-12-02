variable "cidr" {
  type = string
  default = "10.0.1.0/24"
}

variable "az" {
  type = string
  default = "ap-northeast-1a"
}

variable "subnet_id" {
  type = string
}

variable "sg_id" {
  type = string  
}

variable "ec2_type" {
  type = string
  default = "t2.micro"
  
}

variable "instance_key" {
  type = string
  default = "devopsproject"
  
}