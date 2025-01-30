output "resource_group_name" {
  value = module.rg.resource_group_name
}
output "resource_group_location" {
  value = module.rg.resource_group_location
}
output "virtualNet_name" {
  value = module.rg.virtualNet_name
}
output "subnet" {
  value = module.rg.subnet
}
output "address_space_details" {
  value = module.rg.address_space_details
}
output "address_prefixes_details" {
  value = module.rg.address_prefixes_details
}
output "nic_details" {
  value = module.rg.nic_details
}
output "nsg_rule_details" {
  value = module.rg.nsg_rule_details
}
output "vm_details" {
  value = module.rg.vm_details
}
output "vm_size_details" {
  value = module.rg.vm_size_details
}
