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
