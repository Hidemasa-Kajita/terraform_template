locals {
  vpc_id      = var.vpc_id
  name        = var.name
  default_tag = var.default_tag
}

resource "aws_internet_gateway" "this" {
  vpc_id = local.vpc_id

  tags = merge(
    {
      Name = "${local.name}-vpc-igw"
    },
    local.default_tag,
  )
}
