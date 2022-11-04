resource "azurerm_cosmosdb_account" "db" {
  name                = "crcsox-functions"
  location            = "Central US"
  resource_group_name = "crc-dev"
  offer_type          = "Standard"
  kind                = "MongoDB"

  enable_automatic_failover = true

  capabilities {
    name = "EnableServerless"
  }

  capabilities {
    name = "mongoEnableDocLevelTTL"
  }

  capabilities {
    name = "MongoDBv3.4"
  }

  capabilities {
    name = "EnableMongo"
  }

  consistency_policy {
    consistency_level       = "BoundedStaleness"
    max_interval_in_seconds = 300
    max_staleness_prefix    = 100000
  }

  geo_location {
    location          = "centralus"
    failover_priority = 1
  }
}