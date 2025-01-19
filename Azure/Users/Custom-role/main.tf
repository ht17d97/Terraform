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
data "azurerm_subscription" "primary" {
}

resource "azurerm_role_definition" "example" {
  name        = "custom-vm-on"
  scope       = data.azurerm_subscription.primary.id
  description = "This is a custom role created via Terraform"

  permissions {
    actions     = [
    "Microsoft.Compute/*/read",
    "Microsoft.Compute/virtualMachines/start/action",
    "Microsoft.Compute/virtualMachines/restart/action",
    ]
    not_actions = []
  }
  assignable_scopes = [
    data.azurerm_subscription.primary.id,
  ]
}
resource "azurerm_role_assignment" "custom-vm-on-assignment" {
  scope                = azurerm_resource_group.rg.id
  role_definition_name = "custom-vm-on"
  principal_id         = azuread_user.example.object_id
}

