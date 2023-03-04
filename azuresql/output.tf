output "azurerm_resource_group_name" {
    value = azurerm_resource_group.arg
  
}
output "azurerm_storage_account" {
    value = azurerm_storage_account.asa
    sensitive = true

}
output "azurerm_mssql_server" {
    value = azurerm_mssql_server.ams
    sensitive = true
  
}
output "azurerm_mssql_database" {
    value = azurerm_mssql_database.amd
    sensitive = true
  
}
output "azurerm_mssql_database_server_id" {
    value = azurerm_mssql_server.ams.id
    sensitive = true
  
}