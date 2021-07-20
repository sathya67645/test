terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.12.29"
}

provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}


resource "aws_vpc" "sathya_vpc_dev" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "sathya_VPC"
    environment= "DEV-ENV"
  }
}
