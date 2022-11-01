resource "azurerm_service_plan" "service" {
  name                = "CRCSOX-Service-Plan"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = "Windows"
  sku_name            = "Y1"
}