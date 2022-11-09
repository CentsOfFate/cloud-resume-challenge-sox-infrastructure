variable "cosmos_name" {
  type        = string
  default     = "CRCSOX-Cosmos-Prod"
  description = "Cosmos Name"
}

variable "static_site_name" {
  type        = string
  default     = "CRCSOX-Client-Prod"
  description = "Static Site Name for Resume Client"
}

variable "functions_name" {
  type        = string
  default     = "crcsox-functions-prod"
  description = "Functions Name"
}

variable "service_plan_name" {
  type        = string
  default     = "crcsox-sp-prod"
  description = "Service Plan Name"
}

variable "storage_name" {
  type        = string
  default     = "crcstoreprod"
  description = "Storage Name"
}