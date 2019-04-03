data "aws_region" "current" {}
resource "aws_vpc" "hbns-x1-clone" {
    cidr_block ="${var.aws_vpc_cidr}"
    enable_dns_hostnames = true
    tags ={
        Name = "hbns-x1-clone" 
    }
}

# PULIC SUBNET
resource "aws_subnet" "hbns-x1-public-a-clone" {
    vpc_id = "${aws_vpc.hbns-x1-clone.id}"
    availability_zone = "${data.aws_region.current.name}a"
    cidr_block="${var.aws_subnet_public_cidr}"
    tags ={
        Name = "hbns-x1-public-a-clone"
    }


}

