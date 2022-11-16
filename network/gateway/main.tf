locals {
  vpc_id       = var.vpc_id
  name         = var.name
  default_tags = var.default_tags
}

module "internet_gateway" {
  source = "./internet_gateway"

  vpc_id       = local.vpc_id
  name         = local.name
  default_tags = local.default_tags
}
