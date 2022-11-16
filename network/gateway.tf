resource "aws_internet_gateway" "this" {
  vpc_id = local.vpc_id

  tags = merge(
    {
      Name = "${local.name}-vpc-igw"
    },
    local.default_tags,
  )
}
