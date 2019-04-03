provider "aws" {
  region    ="${var.aws_region}"
  profile   ="${var.aws_profile}" 
}

module "network" {
  source = "../modules/network"
  aws_vpc_cidr = "${var.aws_vpc_cidr}"
  aws_subnet_public_cidr = "${var.aws_subnet_public_cidr}"
}
