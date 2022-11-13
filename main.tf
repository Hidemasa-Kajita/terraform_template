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

resource "aws_vpc" "this" {
  #ts:skip=AWS.VPC.Logging.Medium.0470 TODO
  cidr_block           = local.network.vpc.cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  instance_tenancy     = "default"

  tags = merge(
    {
      Name = "${local.network.vpc.name}-vpc"
    },
    local.default_tag,
  )
}

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id

  tags = merge(
    {
      Name = "${local.network.vpc.name}-vpc-igw"
    },
    local.default_tag,
  )
}
