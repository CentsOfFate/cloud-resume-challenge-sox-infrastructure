resource "azurerm_storage_account" "example" {
  name                     = "crcsox"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "Central US"
  account_tier             = "StorageV2"
  account_replication_type = "LRS"
}