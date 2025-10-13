
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
         value = "A example resource that does nothing-1"
       }
     }
 resource "null_resource" "example2" {
       triggers = {
         value = "A example resource that again does nothing"
       }
     }
