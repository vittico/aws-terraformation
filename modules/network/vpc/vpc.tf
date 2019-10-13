resource "aws_vpc" "name" {
  cidr_block = var.cidr
  instance_tenancy = var.tenancy
  enable_dns_hostnames = var.dns_hostnames
  enable_dns_support = var.dns_support

  tags = {
    Name =  "${var.name}-${var.environment}"
    Environment = var.environment
    Terraform = true
    Comments = "This resource is managed by Terraform - Created on ${timestamp()}"
  }
}