resource "azurerm_static_site" "site" {
  name                = var.static_site_name
  resource_group_name = "crc-dev"
  location            = "Central US"
  sku_tier            = "Free"
  sku_size            = "Free"
}