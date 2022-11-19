locals {
  vpc = var.network.vpc

  name         = local.vpc.name
  cidr         = local.vpc.cidr
  default_tags = var.default_tags
  vpc_id       = aws_vpc.this.id
}
