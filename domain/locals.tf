locals {
  domain       = var.domain
  default_tags = var.default_tags

  root_domain = local.domain.root
  sub_domain  = local.domain.sub

  route53_zone_id = aws_route53_zone.root.zone_id
}
