provider "aws" {
  version = "~> 3.0"
  region  = "ap-south-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-bucket-sameer2020"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}