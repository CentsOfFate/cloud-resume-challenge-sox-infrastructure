variable "client_id" {
  type  = string
  default = ""
}

variable "client_secret" {
  type    = string
  default = ""
}

variable "subscription_id" {
  type    = string
  default = ""
}

variable "tenant_id" {
  type    = string
  default = ""
}

variable "static_site_name" {
  type        = string
  default     = "CRCSOX-Client-Dev"
  description = "Static Site Name for Resume Client"
}