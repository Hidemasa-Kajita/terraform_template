variable "network" {
  type = object({
    vpc = object({
      name = string
      cidr = string
    })
  })
  description = "network configuration"
}

variable "default_tag" {
  type = object({
    Env        = string
    Managed_by = string
  })
  description = "default tag"
}
