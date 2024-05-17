variable "client_id" {
  description = "The Client ID (appId) for the Service Principal"
  type        = string
}

variable "client_secret" {
  description = "The Client Secret (password) for the Service Principal"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "The Tenant ID for the Service Principal"
  type        = string
}

variable "subscription_id" {
  description = "The Subscription ID for the Azure account"
  type        = string
}
