locals {
  name         = var.name
  cidr         = var.cidr
  default_tags = var.default_tags
}

resource "aws_vpc" "this" {
  #ts:skip=AWS.VPC.Logging.Medium.0470 TODO
  cidr_block           = local.cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  instance_tenancy     = "default"

  tags = merge(
    {
      Name = "${local.name}-vpc"
    },
    local.default_tags,
  )
}
