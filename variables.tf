variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "instance_names" {
  type    = list(string)
  default = ["1", "2", "3"]
}

variable "vpc" {
  type    = string
  default = "10.0.0.0/16"
}

variable "instance_tenancy" {
  type    = string
  default = "default"
}

variable "ami_id" {
  type    = string
  default = "ami-087c17d1fe0178315"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

