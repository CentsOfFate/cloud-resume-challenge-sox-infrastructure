resource "azurerm_static_site" "crc-sox" {
  name                = var.static_site_name
  resource_group_name = "CRCSOX-Dev"
  location            = "Central US"
  sku_tier            = "Free"
  sku_size            = "Free"
}