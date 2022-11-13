module "locals" {
  source = "./locals"
}

output "this" {
  value = {
    network = module.locals.network.this
  }
}
