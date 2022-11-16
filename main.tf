locals {
  config = module.config.this

  env         = var.env
  network     = local.config.network
  default_tag = local.config.default_tag
  domain      = var.domain
  aws_key     = var.aws_key
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

module "domain" {
  source = "./domain"

  domain      = local.domain
  default_tag = local.default_tag

  providers = {
    aws          = aws
    aws.virginia = aws.virginia
  }
}
