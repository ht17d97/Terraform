rg_name      = "Data-RG"
rg_location  = "eastus"
vnet_name    = "mgmt-network"
subnet_range = ["10.0.0.0/16"]
subnet_name  = "mgmt-subnet"
address_pre  = ["10.0.2.0/24"]
nic          = "VM-nic"
nsg_name = "mgmt-nsg-rule"
vm_name = "mgmt-prod1"
vm_size = "Standard_F2"
