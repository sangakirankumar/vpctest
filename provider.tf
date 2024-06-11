terraform {
  # Anyversion in the range greater than 1.8.4   
  required_version = ">= 1.8.4"

  # Enter all providers here
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  #profile = "kiran"
}