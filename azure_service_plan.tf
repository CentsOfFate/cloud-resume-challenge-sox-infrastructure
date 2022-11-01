resource "azurerm_service_plan" "service" {
  name                = "CRCSOX-Service-Plan"
  resource_group_name = "CRCSOX-Dev"
  location            = "Central US"
  os_type             = "Windows"
  sku_name            = "Y1"
}