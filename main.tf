locals {
  config = module.config.this

  env         = var.env
  network     = local.config.network
  default_tag = local.config.default_tag
}

module "config" {
  source = "./config"

  env = local.env
}

module "network" {
  source = "./network"

  network     = local.network
  default_tag = local.default_tag
}
