locals {
  domain = var.domain

  root_domain = local.domain.root
  sub_domain  = local.domain.sub
}

resource "aws_route53_zone" "root" {
  name = local.root_domain
}

resource "aws_route53_zone" "sub" {
  name = local.sub_domain
}
