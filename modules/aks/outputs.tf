output "kubernetes_cluster_name" {
  description = "The name of the Kubernetes cluster."
  value       = azurerm_kubernetes_cluster.aks.name
}

output "kube_config" {
  description = "Kube config for the AKS cluster."
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
}

output "resource_group_name" {
  description = "The name of the resource group."
  value       = azurerm_resource_group.aks.name
}

output "virtual_network_name" {
  description = "The name of the virtual network."
  value       = azurerm_virtual_network.aks_vnet.name
}

output "subnet_name" {
  description = "The name of the subnet."
  value       = azurerm_subnet.aks_subnet.name
}