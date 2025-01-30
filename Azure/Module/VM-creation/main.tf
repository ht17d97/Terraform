module "rg" {
  source       = "./module_rg"
  rg_name      = var.rg_name
  rg_location  = var.rg_location
  vnet_name    = var.vnet_name
  subnet_range = var.subnet_range
  subnet_name  = var.subnet_name
  address_pre  = var.address_pre
  nic          = var.nic
  nsg_name = var.nsg_name
  vm_name = var.vm_name
  vm_size = var.vm_size
}
