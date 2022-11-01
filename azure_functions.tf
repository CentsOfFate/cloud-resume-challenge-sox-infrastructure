resource "azurerm_windows_function_app" "crcsox" {
  name                = var.functions_name
  resource_group_name = "CRCSOX-Dev"
  location            = "Central US"

  storage_account_name       = "crcsox"
  storage_account_access_key = "+/KCi7ZiF1cDQUghZTJ7Aw/vILhOa+Opu4cLItaCbJ7UsIYHpLRcsfILI4ZbLhR1ArDfD2GG5htZ+AStC6Gbxg=="
  service_plan_id            = azurerm_service_plan.service.id

  site_config {}
}