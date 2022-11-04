resource "azurerm_storage_account" "functions" {
  name                     = "crcfunctionsstorage"
  resource_group_name      = "crc-dev"
  location                 = "Central US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_service_plan" "functions" {
  name                = "crcsox-service-plan"
  resource_group_name = "crc-dev"
  location            = "Central US"
  os_type             = "Windows"
  sku_name            = "Y1"
}

resource "azurerm_windows_function_app" "functions" {
  name                = "crcsox-functions"
  resource_group_name = "crc-dev"
  location            = "Central US"

  storage_account_name       = azurerm_storage_account.functions.name
  storage_account_access_key = azurerm_storage_account.functions.primary_access_key
  service_plan_id            = azurerm_service_plan.functions.id

  site_config {}
}