resource "azurerm_resource_group" "resource-abhimanyu" {
    for_each = var.resource_groups
  name     = each.key
  location = each.value
}

