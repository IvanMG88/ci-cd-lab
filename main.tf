provider "azurerm" {
    features {}
    subscription_id = "3e46f33c-e2f4-4be3-af80-5cc16d860df8"
}

resource "azurerm_resource_group" "rg" {
  name = "cicd-group"
  location = "eastus2"
}

resource "azurerm_storage_account" "storage" {
  name = "contiuosdeployment"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  account_tier = "Standar"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "example" {
  name = "ivanmartinez"
  storage_account_id = azurerm_storage_account.storage.id
  container_access_type = "container"
}