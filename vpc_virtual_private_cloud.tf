resource "aws_internet_gateway" "igw_00b7146ecb7914fb5" {
  vpc_id = aws_vpc.vpc_05ddd616329ce39ab.id
}

resource "aws_route_table" "rtb_0ee5246c5abe9cf25" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_00b7146ecb7914fb5.id
  }

  vpc_id = aws_vpc.vpc_05ddd616329ce39ab.id
}

resource "aws_security_group" "sg_0a79de319111acb92" {
  description = "default VPC security group"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    from_port = 0
    protocol  = "-1"
    self      = true
    to_port   = 0
  }

  name   = "default"
  vpc_id = aws_vpc.vpc_05ddd616329ce39ab.id
}

resource "aws_subnet" "subnet_04ad0951d88b4bb18" {
  availability_zone                   = "us-east-2c"
  cidr_block                          = "172.31.32.0/20"
  map_public_ip_on_launch             = true
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.vpc_05ddd616329ce39ab.id
}

resource "aws_subnet" "subnet_0cfeed43a89fc54e1" {
  availability_zone                   = "us-east-2b"
  cidr_block                          = "172.31.16.0/20"
  map_public_ip_on_launch             = true
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.vpc_05ddd616329ce39ab.id
}

resource "aws_subnet" "subnet_0d74c728064e43186" {
  availability_zone_id                = "use2-az1"
  cidr_block                          = "172.31.0.0/20"
  map_public_ip_on_launch             = true
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.vpc_05ddd616329ce39ab.id
}

resource "aws_vpc" "vpc_05ddd616329ce39ab" {
  cidr_block           = "172.31.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"
}

