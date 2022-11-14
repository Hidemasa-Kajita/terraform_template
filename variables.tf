variable "aws_key" {
  type = object({
    access_key = string
    secret_key = string
  })
  sensitive   = true
  description = "AWS Keys"
}

variable "env" {
  type        = string
  description = "enviroment"
}

variable "region" {
  type        = string
  sensitive   = true
  description = "aws region"
}

variable "domain" {
  type = object({
    root = string
    sub  = string
  })
  sensitive   = true
  description = "root and sub domain name from \"名前.com\""
}
