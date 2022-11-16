variable "domain" {
  type = object({
    root = string
    sub  = string
  })
  description = "root and sub domain name"
}

variable "default_tags" {
  type = object({
    Env        = string
    Managed_by = string
  })
  description = "default tags"
}
