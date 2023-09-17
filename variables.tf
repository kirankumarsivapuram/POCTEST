variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
}

variable "location" {
  type        = string
  description = "Resources location in Azure"
}
variable "acr_name" {
  type        = string
  description = "ACR name"
 
}
variable "azurerm_container_registry_sku" {
  type        = string
  description = "ACR SKU"
}

variable "azurerm_container_registry_Admin_Enabled" {
  type        = string
  description = "ACR Admin Enabled"
}
variable "subscription_id" {
  type        = string
  description = "Subscription ID"
}

variable "tenant_id" {
  type        = string
  description = "Tenant ID"
}

variable "client_id" {
  type        = string
  description = "Client ID"
}

variable "client_secret" {
  type        = string
  description = "ClientSecret"
}
