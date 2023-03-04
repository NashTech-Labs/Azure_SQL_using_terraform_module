variable "azurerm_resource_group_name" {
    type = string
    description = "Name of the resource group"
  
}
variable "location" {
    type = string
    description = "Location of resource group"
  
}
variable "storage_account_name" {
    type = string
    description = "Location of storage account"
  
}
variable "mssql_server_name" {
    type = string
    description = "Location of server name"
  
}
variable "mssql_database_name" {
    type = string
    description = "Location of db name"
  
}
variable "admin_login" {
    type = string
    description = "admin login details"
  
}
variable "admin_password" {
    type= string
    description = "admin password details"
}