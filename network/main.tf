locals {
  network = var.network

  vpc          = local.network.vpc
  default_tags = var.default_tags
}

module "vpc" {
  source = "./vpc"

  name         = local.vpc.name
  cidr         = local.vpc.cidr
  default_tags = local.default_tags
}

module "gateway" {
  source = "./gateway"

  vpc_id       = module.vpc.id
  name         = local.vpc.name
  default_tags = local.default_tags
}
