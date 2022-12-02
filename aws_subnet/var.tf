variable "cidr" {
  type = string
  default = "10.0.1.0/24"
}

variable "az" {
  type = string
  default = "ap-northeast-1a"
}

variable "vpc_id" {
    type = string
}