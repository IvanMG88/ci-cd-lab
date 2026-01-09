terraform {
    backend "azurerm" {
      storage_account_name = "estadosterraform"
      container_name = "githubactionstate"  
      key = "estados.tfstate"
    }
}