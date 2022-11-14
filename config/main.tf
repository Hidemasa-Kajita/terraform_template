variable "env" {
  type        = string
  description = "enviroment"
}

module "locals" {
  source = "./locals"
  env    = var.env
}

output "this" {
  value = {
    network     = module.locals.network.this
    default_tag = module.locals.default_tag.this
  }
}
