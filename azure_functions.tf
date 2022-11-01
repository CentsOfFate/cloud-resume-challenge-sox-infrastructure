resource "azurerm_windows_function_app" "crcsox" {
  name                = var.functions_name
  resource_group_name = "CRCSOX-Dev"
  location            = "Central US"
  service_plan_id     = azurerm_service_plan.service.id

  site_config {}
}