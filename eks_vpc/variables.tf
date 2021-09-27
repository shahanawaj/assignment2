variable "aws_region" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "vpc_cidr_block" {
  type = string
}

variable "public_subnets" {
  type = list(string)
}

variable "private_subnets" {
  type = list(string)
}
