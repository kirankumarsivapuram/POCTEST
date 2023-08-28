
variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
}
variable "Azure_Vnet_Name" {
  type        = string
  description = "Virtual Network name"
}

variable "Azure_AKS_Subnet_Name" {
  type        = string
  description = "Virtual Network sub net name"
}

variable "Azure_Subnet_Name" {
  type        = string
  description = "Virtual Network sub net name"
}
variable "Azure_Subnet_Name_address_prefixes" {
  type        = string
  description = "Virtual Network subnet address prefixes "
}

variable "api_management_name" {
  type        = string
  description = "Api Management Name"
}

variable "api_management_publisher" {
  type        = string
  description = "Api Management publisher"
}

variable "api_management_publisher_email" {
  type        = string
  description = "Api Management publisher EMail"
}

variable "sku_name" {
  type        = string
  description = "Sku Name"
}
variable "api_management_virtual_network_type" {
  type        = string
  description = "Api Management virtual network type"
}

variable "api_management_gateway_name" {
  type        = string
  description = "Api Management gateway name"
}

variable "api_management_gateway_city" {
  type        = string
  description = "Api Management gateway city"
}

variable "api_management_gateway_district" {
  type        = string
  description = "Api Management gateway district"
}

variable "api_management_gateway_location_name" {
  type        = string
  description = "Api Management gateway Location Name"
}
