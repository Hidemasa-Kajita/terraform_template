provider "aws" {
  region     = "ap-northeast-1"
  access_key = var.aws_key.access_key
  secret_key = var.aws_key.secret_key
}
