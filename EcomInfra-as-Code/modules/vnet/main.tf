resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location[1]
}

# resource "azurerm_network_security_group" "example" {
#   name                = "example-security-group"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
# }

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name 
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = [var.vnet_cidr]

}

resource "azurerm_subnet" "public_subnet" {
  name                 = var.public-subnet-name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.public_subnet_cidr]
}

resource "azurerm_subnet" "private_subnet" {
  name                 = var.private-subnet-name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.private_subnet_cidr]
}




resource "azurerm_public_ip" "public_ip" {
  name                = "public-ip"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
}

resource "azurerm_lb" "public_lb" {
  name                = "public-lb"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  frontend_ip_configuration {
    name                 = "public-lb-ip"
    public_ip_address_id = azurerm_public_ip.public_ip.id
  }
}

