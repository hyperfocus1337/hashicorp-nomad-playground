terraform {
  required_version = ">= 1.4"
  backend "local" {
    path = "tfstate/terraform.tfstate"
  }
}