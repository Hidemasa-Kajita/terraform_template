variable "domain" {
  type = object({
    root = string
    sub  = string
  })
  description = "root and sub domain name"
}
