terraform {
    backend "azurerm" {
      storage_account_name = "estadosterraformjimg"
      container_name = "githubactionstate"  
      key = "estados.tfstate"
    }
}