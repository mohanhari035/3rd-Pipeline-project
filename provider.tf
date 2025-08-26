terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.39.0"
    }
  }
}
provider "azurerm" {
  subscription_id = "cd883195-4092-4235-89ce-a005b171ae9e"
  features {}
}