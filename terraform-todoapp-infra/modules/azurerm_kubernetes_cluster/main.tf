resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.node_count 
    vm_size    = var.vm_size 
    temporary_name_for_rotation = "tempnp"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}