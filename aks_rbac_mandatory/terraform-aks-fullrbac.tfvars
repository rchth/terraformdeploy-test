  location            = "francecentral"
  prefix              = "network-aksfullrbac"
  dns_prefix          = "testingaksfullrbac"
  node_count          = 1
  vm_size             = "Standard_B2s"
  local_account_disabled = true
  isrbacenabled = true
  isazurerbacenabled = true