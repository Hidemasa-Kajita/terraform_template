locals {
  config = module.config.this

  env          = var.env
  network      = local.config.network
  default_tags = local.config.default_tags
  domain       = var.domain
  aws_key      = var.aws_key
}

module "config" {
  source = "./config"

  env = local.env
}

module "network" {
  source = "./network"

  network      = local.network
  default_tags = local.default_tags
}

module "domain" {
  source = "./domain"

  domain       = local.domain
  default_tags = local.default_tags

  providers = {
    aws          = aws
    aws.virginia = aws.virginia
  }
}
