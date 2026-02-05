terraform {
  required_providers {
    saviynt = {
      source = "saviynt/saviynt"
      version = "0.3.2"
    }
  }
}

provider "saviynt" {
  # Configuration options
  server_url = var.server_url
  password = var.password
  username = var.username
}