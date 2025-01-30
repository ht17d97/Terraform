output "resource_group_name" {
  value       = resource.azurerm_resource_group.example.name
}
output "resource_group_location" {
  value       = resource.azurerm_resource_group.example.location
}
output "virtualNet_name" {
  value       = resource.azurerm_virtual_network.example.name
}
output "subnet" {
  value       = resource.azurerm_subnet.example.name
}
output "address_space_details" {
  value       = resource.azurerm_virtual_network.example.address_space
}
output "address_prefixes_details" {
  value      = resource.azurerm_subnet.example.address_prefixes
}
output "nic_details" {
  value      = resource.azurerm_network_interface.example.name
}
output "nsg_rule_details" {
  value      = resource.azurerm_network_security_group.example.name
}
output "vm_details" {
  value      = resource.azurerm_linux_virtual_machine.example.name
}
output "vm_size_details" {
  value      = resource.azurerm_linux_virtual_machine.example.size
}
