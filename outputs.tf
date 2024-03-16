output "sa_id" {
  value       = azurerm_storage_account.this.id
  description = "The resource id of the storage account"
}
output "sa_name" {
  value       = azurerm_storage_account.this.name
  description = "The name of the storage account resource"
}