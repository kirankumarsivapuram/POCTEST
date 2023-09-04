resource_group_name = "lob-poc-rg-aks"
location            = "East US"
cluster_name        = "lob-terraform-aks"
kubernetes_version  = "1.25.11"
system_node_count   = 2
#create the vnet 
Azure_Vnet_Name="acrvnetnew"
Azure_Vnet_address_space="125.11.0.0/16"
Azure_Subnet_Name="acrsubnetnew"
Azure_Subnet_Name_address_prefixes="125.11.0.0/24"

#end of vnet and subnet
acr_name            = "testacrpoc08112023"
role_definition_name="AcrPull"
azurerm_container_registry_sku="Basic"
azurerm_container_registry_Admin_Enabled=false
Azure_Role_Assignment_skip_service_principal_aad_check=true
AKS_Default_Node_pool_Name="acrlobtpool"
AKS_Default_Node_pool_VM_Size="Standard_DS2_v2"
AKS_Default_Node_pool_enable_auto_scale=false
subscription_id ="e64d2b7e-f9cf-4177-afb5-b4eb654ca3cb"
tenant_id =  "5461eb53-e0fd-4320-92ff-c6efe1fe91e9" #" ${{secrets.azure_tenent_id}} "

