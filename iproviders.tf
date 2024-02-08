terraform {
    required_version = ">=1.0"
  
    required_providers {
      azurerm = {
        source  = "hashicorp/azurerm"
        version = "~>3.0"
      }
        aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0, < 6.0.0"
    }
      random = {
        source  = "hashicorp/random"
        version = "~>3.0"
      }
    }
  }
  
  provider "azurerm" {
    features {}
  }
provider "aws" {
    region = var.providers_region # São Paulo region



  