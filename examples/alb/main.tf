terraform {
  required_version = "~> 0.13"
}

provider "aws" {
  region  = "ap-northeast-1"
  version = "~> 3.9.0"
}

module "alb" {
  source = "../../modules/networking/alb"

  alb_name   = var.alb_name
  subnet_ids = data.aws_subnet_ids.default.ids
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnet_ids" "default" {
  vpc_id = data.aws_vpc.default.id
}
