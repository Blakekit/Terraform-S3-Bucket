provider "aws" {
  region = "ap-south-1"
  assume_role {
    role_arn = "arn:aws:iam:123456789000:role/terraform"
  }
}