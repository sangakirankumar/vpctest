

variable "aws_region" {
  description = "AWS region to use"
  type        = string
}

variable "vpc_cidr" {
  description = "The IPv4 CIDR block to use for the VPC"
  type        = string
  validation {
    condition     = tonumber(split("/", var.vpc_cidr)[1]) <= 20 && tonumber(split("/", var.vpc_cidr)[1]) >= 16
    error_message = "CIDR size must be at least /20 and no larger than /16"
  }
}

variable "igw_tags" {
  description = "AWS region to use"
  type        = map
  default = {"Name" = "Terraform_igw"}
}

variable "vpc_tags" {
  description = "AWS region to use"
  type        = map
  default = {"Name" = "Terraform_vpc"}
}