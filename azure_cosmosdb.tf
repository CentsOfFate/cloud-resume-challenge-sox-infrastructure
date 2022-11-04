resource "azurerm_cosmosdb_table" "example" {
  name                = "crcsox-functions"
  resource_group_name = "crc-dev"
  account_name        = "crcsox"
  throughput          = 400
}