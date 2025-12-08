
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
 resource "null_resource" "example3" {
       triggers = {
         value = "A example resource that again does nothing"
       }
     }
