resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr
  instance_tenancy     = var.tenancy
  enable_dns_hostnames = var.dns_hostnames
  enable_dns_support   = var.dns_support

  tags = {
    Name        = "${var.name}-${var.environment}"
    Environment = var.environment
    Terraform   = true
    Comments    = "This resource is managed by Terraform - Created on ${timestamp()}"
  }
}

resource "aws_default_route_table" "rt" {
  default_route_table_id = aws_vpc.vpc.default_route_table_id

  tags = {
    Name        = "${var.name}-${var.environment}-rt"
    Environment = var.environment
    Terraform   = true
    Comments    = "This resource is managed by Terraform - Created on ${timestamp()}"
  }

}

resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.vpc.id 

  tags = {
    Name        = "${var.name}-${var.environment}-sg"
    Environment = var.environment
    Terraform   = true
    Comments    = "This resource is managed by Terraform - Created on ${timestamp()}"
  }

}


resource "aws_default_network_acl" "default" {
  default_network_acl_id = aws_vpc.vpc.default_network_acl_id

  tags = {
    Name        = "${var.name}-${var.environment}-nacl"
    Environment = var.environment
    Terraform   = true
    Comments    = "This resource is managed by Terraform - Created on ${timestamp()}"
  }

}


