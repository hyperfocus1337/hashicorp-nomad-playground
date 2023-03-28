terraform {
  required_version = ">= 1.4"
  backend "local" {
    path = "tfstate/terraform.tfstate"
  }
}

provider "nomad" {
  address = var.nomad_address
}

resource "nomad_job" "tetris" {
  jobspec = file("${path.module}/tetris.hcl")
}
