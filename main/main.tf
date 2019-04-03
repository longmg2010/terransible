provider "aws" {
  region    ="${var.aws_region}"
  profile   ="${var.aws_profile}" 
}
data "aws_region" "current" {}
resource "aws_vpc" "hbns-x1-clone" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
    tags ={
        Name = "hbns-x1-clone" 
    }
}

# PULIC SUBNET
resource "aws_subnet" "hbns-x1-public-a-clone" {
    vpc_id = "${aws_vpc.hbns-x1-clone.id}"
    availability_zone = "${data.aws_region.current.name}a"
    cidr_block="10.0.0.0/20"
    tags ={
        Name = "hbns-x1-public-a-clone"
    }


}

