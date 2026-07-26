resource "aws_vpc" "this" {

  cidr_block = var.vpc_cidr

  enable_dns_support = true

  enable_dns_hostnames = true

  tags = {
    Name      = var.name
    ManagedBy = "Terraform"
    Project   = "Enterprise-DevOps-Platform"
  }

}
resource "aws_internet_gateway" "this" {

  vpc_id = aws_vpc.this.id

  tags = {
    Name = "${var.name}-igw"
  }

}
resource "aws_subnet" "public_1" {

  vpc_id = aws_vpc.this.id

  cidr_block = var.public_subnet_1_cidr

  availability_zone = "ap-south-1a"

  map_public_ip_on_launch = true

  tags = {
    Name = "${var.name}-public-1"
  }

}
resource "aws_subnet" "public_2" {

  vpc_id = aws_vpc.this.id

  cidr_block = var.public_subnet_2_cidr

  availability_zone = "ap-south-1b"

  map_public_ip_on_launch = true

  tags = {
    Name = "${var.name}-public-2"
  }
}
resource "aws_subnet" "private_1" {

  vpc_id = aws_vpc.this.id

  cidr_block = var.private_subnet_1_cidr

  availability_zone = "ap-south-1a"

  map_public_ip_on_launch = false

  tags = {
    Name = "${var.name}-private-1"
  }

}

resource "aws_subnet" "private_2" {

  vpc_id = aws_vpc.this.id

  cidr_block = var.private_subnet_2_cidr

  availability_zone = "ap-south-1b"

  map_public_ip_on_launch = false

  tags = {
    Name = "${var.name}-private-2"
  }

}
