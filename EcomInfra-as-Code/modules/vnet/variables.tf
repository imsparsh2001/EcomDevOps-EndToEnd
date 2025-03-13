variable "resource_group_name" {
  type = string
  description = "name of resource group"
  default = "aks-reource-01"
}

variable "location" {
  type = list(string)
  description = "list of available location "
  default = [ "East US", "Canada Central" ]
}

variable "vnet_name" {
  type = string
  description = "name of the virtual network"
  default = "aks-cluster"
}

variable "vnet_cidr" {
    type = string
    description = "cidr address of the virtual network"
    default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
    type = string
    description = "value of public subnet cidr"
    default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
    type = string
    description = "value of private subnet cidr"
    default = "10.0.2.0/24"
}

variable "public-subnet-name" {
  type = string
  description = "name of public subnet"
  default = "public-subnet"
}
variable "private-subnet-name" {
  type = string
  description = "name of private subnet"
  default = "private-subnet"
}