resource_group_name = "lob-poc-rg-acr"
location = "East US"
acr_name            = "acontappacr"
azurerm_container_registry_sku="Basic"
azurerm_container_registry_Admin_Enabled=true
subscription_id ="e64d2b7e-f9cf-4177-afb5-b4eb654ca3cb"
tenant_id =  "5461eb53-e0fd-4320-92ff-c6efe1fe91e9" #" ${{secrets.azure_tenent_id}} "

