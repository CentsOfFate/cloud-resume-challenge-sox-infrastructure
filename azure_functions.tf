resource "azurerm_windows_function_app" "crcsox" {
  name                = var.functions_name
  resource_group_name = "CRCSOX-Dev"
  location            = "Central US"

  storage_account_name       = azurerm_storage_account.storage.name
  storage_account_access_key = azurerm_storage_account.storage.primary_access_key
  service_plan_id            = azurerm_service_plan.service.id

  site_config {}
}