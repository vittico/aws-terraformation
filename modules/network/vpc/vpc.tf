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
