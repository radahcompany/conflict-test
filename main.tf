resource "azurerm_resource_group" "rg-cluster" {
  name     = "rg-cluster"
  location = "Australia East"

}

resource "azurerm_kubernetes_cluster" "aks-cluster" {
  name                = "aks-cluster001"
  location            = azurerm_resource_group.rg-cluster.location
  resource_group_name = azurerm_resource_group.rg-cluster.name
     dns_prefix          = "aks-cluster001"


  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2as_v5"
  }


identity {
    type = "SystemAssigned"
  }


}