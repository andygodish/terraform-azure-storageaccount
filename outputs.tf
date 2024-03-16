output "sa_id" {
  value       = azurerm_storage_account.sa.id
  description = "The resource id of the storage account"
}
output "sa_name" {
  value       = azurerm_storage_account.sa.name
  description = "The name of the storage account resource"
}