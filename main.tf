provider "azurerm" {
  features {}
  subscription_id = var.subscription
}

module "resource_group" {
  source   = "./modules/resource_group"
  name     = "aks-cluster-rg-01"
  location = var.location
}

module "virtual_network" {
  source              = "./modules/virtual_network"
  name                = "myVnet"
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  
}

module "subnets" {
  depends_on = [ module.virtual_network ]
  source              = "./modules/subnets"
  virtual_network_name  = "myVnet"
  resource_group_name = module.resource_group.resource_group_name
}

module "aks_cluster" {
  source              = "./modules/aks_cluster"
  cluster_name        = "myAKSCluster"
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  dns_prefix          = "myakscluster"
  default_node_count  = 1
  vm_size             = "Standard_DS2_v2"
  subnet_id           = module.subnets.stere_subnet_id
  availability_zones  = var.availability_zones
  tags =  { org = "stere" }
}


