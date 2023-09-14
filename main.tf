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



data "azurerm_resource_group" "resourcegroup" {
    name = var.resource_group_name 
}

data "azurerm_virtual_network" "vnet" {
    name = var.Azure_Vnet_Name
    resource_group_name = data.azurerm_resource_group.resourcegroup.name    
  
}

data "azurerm_subnet" "subnet" {
    name = var.Azure_AKS_Subnet_Name
    resource_group_name = data.azurerm_resource_group.resourcegroup.name
    virtual_network_name = data.azurerm_virtual_network.vnet.name
  
}

resource "azurerm_subnet" "virtualsubnet" {
  name = var.Azure_Subnet_Name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  resource_group_name = data.azurerm_resource_group.resourcegroup.name
  address_prefixes = [var.Azure_Subnet_Name_address_prefixes]
  
}
resource "azurerm_api_management" "apimaanagement" {

    name = var.api_management_name
    location = data.azurerm_resource_group.resourcegroup.location
    resource_group_name = data.azurerm_resource_group.resourcegroup.name
    publisher_name = var.api_management_name
    publisher_email = var.api_management_publisher_email
    sku_name = var.sku_name
    virtual_network_type = var.api_management_virtual_network_type
    #virtual_network_configuration {
    #subnet_id = azurerm_subnet.virtualsubnet.id
   #} 
}

resource "azurerm_api_management_gateway" "apigateway" {

    api_management_id = azurerm_api_management.apimaanagement.id
    name = var.api_management_gateway_name
    location_data {
      city = var.api_management_gateway_city
      district = var.api_management_gateway_district
      name = var.api_management_gateway_location_name
      region = data.azurerm_resource_group.resourcegroup.location     
    }    
}



