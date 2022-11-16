variable "vpc_id" {
  type        = string
  description = "vpc id"
}

variable "name" {
  type        = string
  description = "vpc name prefix"
}

variable "default_tags" {
  type = object({
    Env        = string
    Managed_by = string
  })
  description = "default tags"
}
