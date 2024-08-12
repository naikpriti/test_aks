terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"  # Use the latest stable version
    }
  }

  required_version = ">= 1.0.0"
}

provider "azurerm" {
  features {}
}
