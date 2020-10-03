terraform {
  required_version = "~> 0.13"
}

provider "aws" {
  region  = "ap-northeast-1"
  version = "~> 3.9.0"
}

module "mysql" {
  source = "../../modules/data-stores/mysql"

  db_name     = var.db_name
  db_username = var.db_username
  db_password = var.db_password
}
