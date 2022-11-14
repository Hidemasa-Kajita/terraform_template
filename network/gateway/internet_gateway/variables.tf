variable "vpc_id" {
  type        = string
  description = "vpc id"
}

variable "name" {
  type        = string
  description = "vpc name prefix"
}

variable "default_tag" {
  type = object({
    Env        = string
    Managed_by = string
  })
  description = "default tag"
}
