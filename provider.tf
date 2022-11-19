provider "aws" {
  region     = var.region
  access_key = var.aws_key.access_key
  secret_key = var.aws_key.secret_key
}

provider "aws" {
  region = "us-east-1"
  alias  = "virginia"

  access_key = var.aws_key.access_key
  secret_key = var.aws_key.secret_key
}
