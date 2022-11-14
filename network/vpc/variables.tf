variable "name" {
  type        = string
  description = "vpc name prefix"
}

variable "cidr" {
  type        = string
  description = "vpc cidr block"
}

variable "default_tag" {
  type = object({
    Env        = string
    Managed_by = string
  })
  description = "default tag"
}
