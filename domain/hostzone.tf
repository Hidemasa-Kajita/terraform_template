locals {
  domain      = var.domain
  default_tag = var.default_tag

  root_domain = local.domain.root
  sub_domain  = local.domain.sub
}

resource "aws_route53_zone" "root" {
  name = local.root_domain
}
