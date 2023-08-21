terraform {
  backend "s3" {
    bucket = "aws-statefile-tf"
    key    = "tf-statefile/terraform.tfstate"
    region = "us-east-1"
  }
}

variable "test" {
  default = "hello"
}

output "test" {
  value = var.test
}


