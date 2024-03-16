resource "azurerm_storage_account" "this" {
  name                     = "sa${local.uniq_name}${var.sub_prefix}${var.app_prefix}${var.app_env}${local.location_abbr[var.location]}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_kind             = var.account_kind
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = merge(local.tags, var.tags)
}

resource "azurerm_storage_container" "this" {
  for_each = try({ for c in var.containers : c.name => c }, {})

  storage_account_name = azurerm_storage_account.this.name

  name                  = each.key
  container_access_type = each.value.container_access_type
  metadata              = each.value.metadata
}
