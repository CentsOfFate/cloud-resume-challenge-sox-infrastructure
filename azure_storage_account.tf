resource "azurerm_storage_account" "storage" {
  name                     = "crcsox"
  resource_group_name      = "CRCSOX-Dev"
  location                 = "Central US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}