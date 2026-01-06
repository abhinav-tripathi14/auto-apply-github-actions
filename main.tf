
terraform { 
  cloud { 
    
    organization = "Test-Abhinav" 

    workspaces { 
      name = "Github-Actions-API-Driven-Workspace" 
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
         value = "A example resource that again does nothing"
       }
     }
