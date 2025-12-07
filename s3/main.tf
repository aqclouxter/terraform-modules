terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.5.0"
}

provider "aws" {
  region = var.region
}


variable "bucket_name" {
  type = string
}

resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
}


