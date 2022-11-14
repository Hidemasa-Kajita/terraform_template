locals {
  vpc_id      = var.vpc_id
  name        = var.name
  default_tag = var.default_tag
}

module "internet_gateway" {
  source = "./internet_gateway"

  vpc_id      = local.vpc_id
  name        = local.name
  default_tag = local.default_tag
}
