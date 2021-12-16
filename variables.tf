variable "root_auth_backends" {
  type = list(object({
    type              = string
    default_lease_ttl = string
    max_lease_ttl     = string
  }))
}

variable "engineering_secrets_engines" {
  type = list(object({
    environment = string
    application = string
    type        = string
    description = string
  }))
}

variable "cloud_secrets_engines" {
  type = list(object({
    environment = string
    application = string
    type        = string
    description = string
  }))
}