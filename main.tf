# VPC Creation
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags                 = var.vpc_tags
}

# IGW Creation
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = var.igw_tags
}