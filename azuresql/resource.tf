provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "arg" {
  name     = var.azurerm_resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "asa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.arg.name
  location                 = azurerm_resource_group.arg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_mssql_server" "ams" {
  name                         = var.mssql_server_name
  resource_group_name          = azurerm_resource_group.arg.name
  location                     = azurerm_resource_group.arg.location
  version                      = "12.0"
  administrator_login          = var.admin_login
  administrator_login_password = var.admin_password
}

resource "azurerm_mssql_database" "amd" {
  name           = var.mssql_database_name
  server_id      = azurerm_mssql_server.ams.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  license_type   = "LicenseIncluded"
  max_size_gb    = 2
  read_scale     = false
  sku_name       = "S0"
  zone_redundant = false

  tags = {
    foo = "bar"
  }
}