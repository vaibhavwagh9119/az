resource "azurerm_kubernetes_cluster_node_pool" "nodepool" {
  name                  = var.name
  kubernetes_cluster_id = var.cluster_id
  vm_size               = var.vm_size
  node_count            = var.node_count
  vnet_subnet_id        = var.subnet_id
  zones                 = var.availability_zones

  tags = var.tags
}

output "nodepool2_id" {
  value = azurerm_kubernetes_cluster_node_pool.nodepool.id
}
