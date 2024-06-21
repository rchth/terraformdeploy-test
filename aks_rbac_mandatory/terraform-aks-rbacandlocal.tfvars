  location            = "francecentral"
  prefix              = "network-akshalfrbac"
  dns_prefix          = "testingakshalfrbac"
  node_count          = 1
  vm_size             = "Standard_B2s"
  local_account_disabled = true
  isrbacenabled = true
  isazurerbacenabled = false