terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.26.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}
resource "aws_s3_bucket" "aws_s3_bucket" {
  bucket = "my-tf-test-bucket-100"

  tags = {
    Name        = "Mybucket10"
    Environment = "Dev"
  }
}