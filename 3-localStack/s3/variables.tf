variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "my-tf-test-bucket"
}

variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-east-1"
  
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  
}