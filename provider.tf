terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.35.0"
    }
  }
}

variable "region" {
  type    = string
  default = "us-east-1"
  description = "AWS region to deploy resources in"
}

provider "aws" {
  region = var.region
}
