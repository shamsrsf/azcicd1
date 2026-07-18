resource "azurerm_resource_group" "example1" {
  name     = "example-resources"
  location = "West US"
}

resource "azurerm_storage_account" "example6" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example1.name
  location                 = azurerm_resource_group.example1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}