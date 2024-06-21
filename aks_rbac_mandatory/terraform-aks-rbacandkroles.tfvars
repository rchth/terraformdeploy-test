  location            = "francecentral"
  prefix              = "network-aks"
  dns_prefix          = "testingaks"
  node_count          = 1
  vm_size             = "Standard_B2s"
  authentication_method = "EntraID_Kubernetes_RBAC"