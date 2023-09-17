terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"

    }
}  

  

  
}

provider "azurerm" {
subscription_id  =  var.subscription_id
tenant_id  =  var.tenant_id
client_id  =  var.client_id
client_secret  = var.client_secret

  features {}

}



resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location =var.location
}
resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  sku                 = var.azurerm_container_registry_sku
  admin_enabled       = var.azurerm_container_registry_Admin_Enabled
}
