resource "azurerm_resource_group" "resource-abhimanyu" {
    for_each = var.resource_groups
  name     = each.key
  location = each.value
}
resource "azurerm_storage_account" "example" {
  for_each = var.storageaccountname
  name                     = each.key
  resource_group_name      = azurerm_resource_group.resource-abhimanyu[each.value.resource_group_name].name
  location                 = each.value.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
