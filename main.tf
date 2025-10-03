
terraform { 
  cloud { 
    
    organization = "Test-Abhinav" 

    workspaces { 
      name = "auto-apply-github-actions" 
    } 
  } 
}
    resource "null_resource" "example" {
       triggers = {
         value = "A example resource that does nothing"
       }
     }
 resource "null_resource" "example2" {
       triggers = {
         value = "A example resource that does nothing-2"
       }
     }

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-abhinav-rg"
  location = "West Europe"
}

import {
  to = azurerm_resource_group.example
  id = "/subscriptions/8fdb01dc-7e3e-489e-9d2b-1a89a45d6c13/resourceGroups/example-abhinav-rg"
}
