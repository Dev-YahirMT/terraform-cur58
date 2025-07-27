terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.5.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region =  var.region
  access_key = "fake"
  secret_key = "fake"
  #Solo para localStack
  s3_use_path_style = true
  skip_credentials_validation = true
  skip_metadata_api_check = true
  skip_requesting_account_id = true
  endpoints {
    s3 = "http://localhost:4566"
  }
}
resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name

  tags = var.tags
  //tags = {
  //  Name        = var.tags["Name"]
  //  Environment = var.tags["Environment"]
  //}
}