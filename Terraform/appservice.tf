# Create an App Service Plan
resource "azurerm_app_service_plan" "appserviceplan" {
  name                = "maven-appserviceplan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = var.resource_group_name
  sku {
    tier = "Standard"
    size = "S1"
  }
}

# Create an App Service
resource "azurerm_app_service" "appservice" {
  name                = "maven-appservice"
  location            = azurerm_resource_group.rg.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.maven-appservice.id
    
#(Optional)
  site_config {
dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }
  
  #(Optional)
  app_settings = {
    "SOME_KEY" = "some-value"
  }

}
