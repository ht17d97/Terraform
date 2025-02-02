rg_name           = "Data-RG"
rg_location       = "eastus"

// Network details
vnet_name         = "mgmt-network"
subnet_range      = ["10.0.0.0/16"]
subnet_name       = "mgmt-subnet"
address_pre       = ["10.0.2.0/24"]
nic               = "VM-nic"
nsg_name          = "mgmt-nsg-rule"

// VM details
vm_name           = "mgmt-prod"
vm_size           = "Standard_F2"
vmcountnumber     = 2
public_ip_vm      = "mgmt-public-ip"
# source_ports      = "22"

// firewall rule details
destination_ports  = ["22", "80", "443", "8080", "8081", "8082"]
nsg_rule_priority = 4045
nsg_rule_name     = "test123"
direction_nsg     = "Inbound"
ngs_rule_define   = "Allow"
