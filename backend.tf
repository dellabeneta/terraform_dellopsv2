terraform {
  backend "s3" {
    bucket  = "terraform-infra-dellopsv2"
    key     = "terraform.tfstate"
    region  = "us-east-1"
  }
}