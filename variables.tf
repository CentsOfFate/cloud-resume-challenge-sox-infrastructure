variable "client_id" {
  type    = string
  default = "6e0f5b8e-06f6-42b7-b95d-aadf94454424"
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
  default = "635011f6-2cb3-4c43-924c-21cff75151bf"
}

variable "static_site_name" {
  type        = string
  default     = "CRCSOX-Client-Dev"
  description = "Static Site Name for Resume Client"
}