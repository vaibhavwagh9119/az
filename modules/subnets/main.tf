resource "azurerm_subnet" "stere" {
  name                 = "stere"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = ["10.240.0.0/16"]
}

resource "azurerm_subnet" "biqmind" {
  name                 = "biqmind"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = ["10.241.0.0/16"]
}

output "stere_subnet_id" {
  value = azurerm_subnet.stere.id
}

output "biqmind_subnet_id" {
  value = azurerm_subnet.biqmind.id
}
