locals {
  default_tags = {
    Env        = var.env
    Managed_by = "Terraform"
  }
}

output "default_tags" {
  value = {
    this = local.default_tags
  }
}
