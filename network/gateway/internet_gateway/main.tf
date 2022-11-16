locals {
  vpc_id       = var.vpc_id
  name         = var.name
  default_tags = var.default_tags
}

resource "aws_internet_gateway" "this" {
  vpc_id = local.vpc_id

  tags = merge(
    {
      Name = "${local.name}-vpc-igw"
    },
    local.default_tags,
  )
}
