resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "eastus"
}

resource "azurerm_container_registry" "acr" {
  name                = "mavenacr2023"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Premium"
  admin_enabled       = false
}