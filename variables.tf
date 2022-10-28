variable "subscription_id" {
}

variable "client_secret" {
}

variable "client_id" {
}

variable "tenant_id" {
}

variable "resource_group" {
  type = string
  default = "CRCSOX-Prod"
  description = "Azure Resource Groups for Cloud Resume Challenge - SOX Edition"
}

variable "static_site_name" {
  type = string
  default = "CRCSOX-Client-Prod"
  description = "Static Site Name for Resume Client"
}