locals {
  network = var.network

  vpc         = local.network.vpc
  default_tag = var.default_tag
}

module "vpc" {
  source = "./vpc"

  name        = local.vpc.name
  cidr        = local.vpc.cidr
  default_tag = local.default_tag
}

module "gateway" {
  source = "./gateway"

  vpc_id      = module.vpc.id
  name        = local.vpc.name
  default_tag = local.default_tag
}
