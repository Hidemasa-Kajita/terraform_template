locals {
  default_tag = {
    Env        = var.env
    Managed_by = "Terraform"
  }
}

output "default_tag" {
  value = {
    this = local.default_tag
  }
}
