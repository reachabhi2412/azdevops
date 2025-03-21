terraform {
  required_version = ">= 1.6.0"
  backend "azurerm" {
    resource_group_name  = "tf-backend-rg"
    storage_account_name = "tfbackendstoragevp"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.93.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "3329f507-c277-4f62-ae69-f613cdee31df"
}

# 1️⃣ Create a Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "my-aks-rg"
  location = "Central India"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "my-aks-cluster"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "myaks"

  default_node_pool {
    name       = "agentpool"
    node_count = 2
    vm_size    = "Standard_D2s_v3"
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin    = "azure"
    load_balancer_sku = "standard"
  }

  tags = {
    Environment = "Dev"
  }
}

# 5️⃣ Create an Azure Container Registry (ACR)
resource "azurerm_container_registry" "acr" {
  name                = "myakscontainerregistry"
  resource_group_name = azurerm_resource_group.rg.name
  location           = azurerm_resource_group.rg.location
  sku                = "Basic"
  admin_enabled      = false
}

# 6️⃣ Assign AKS Permission to ACR
resource "azurerm_role_assignment" "acr_pull" {
  scope                = azurerm_container_registry.acr.id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
}
