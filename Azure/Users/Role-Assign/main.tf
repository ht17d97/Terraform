resource "azurerm_resource_group" "rg" {
  name     = "testing-usercreate"
  location = "South India"
}
resource "azuread_user" "example" {
  user_principal_name = "Ram@himanshutariyal2025outlook.onmicrosoft.com"
  display_name        = "ram"
  mail_nickname       = "ram"
  password            = "SecretP@sswd99!"
}
resource "azurerm_role_assignment" "reader" {
  scope                = azurerm_resource_group.rg.id
  role_definition_name = "Reader"
  principal_id         = azuread_user.example.object_id

}
