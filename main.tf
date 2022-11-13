variable "tags" {

}

locals {
  env = module.env.this

  network = local.env.network
}

module "env" {
  source = "./env"
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
    var.tags,
  )
}

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id

  tags = merge(
    {
      Name = "${local.network.vpc.name}-vpc-igw"
    },
    var.tags
  )
}
