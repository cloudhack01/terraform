resource "azurerm_resource_group" "main_rg" {
  name     = "E1-PROD-DataLake-rg"
  location = "East US"

  tags = merge(local.tags, {
    workload = "data lake"
  })
}

resource "azurerm_synapse_workspace" "datalake_syn" {
  name = "E1-PROD-DataLake-syn"
  resource_group_name = azurerm_resource_group.main_rg.name
  location = azurerm_resource_group.main_rg.location
  
  tags = merge(local.tags, {
    workload = "data lake"
  })
}
