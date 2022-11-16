provider "aws" {
  alias = "virginia"
}

locals {
  tags = merge(
    {
      Name = "${local.root_domain}-cert"
    },
    local.default_tags,
  )
}

resource "aws_acm_certificate" "cloudfront_cert" {
  provider = aws.virginia

  domain_name = local.root_domain
  subject_alternative_names = [
    "*.${local.root_domain}"
  ]
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }

  tags = local.tags
}

resource "aws_route53_record" "cloudfront_cert" {
  zone_id = local.route53_zone_id

  for_each = {
    for dvo in aws_acm_certificate.cloudfront_cert.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  type            = each.value.type
  records         = [each.value.record]
  ttl             = 60
}

resource "aws_acm_certificate_validation" "cloudfront_cert" {
  certificate_arn         = aws_acm_certificate.cloudfront_cert.arn
  validation_record_fqdns = [for record in aws_route53_record.cloudfront_cert : record.fqdn]
  provider                = aws.virginia
}
