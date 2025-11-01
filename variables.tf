
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
    
  }
}

terraform {
  backend "remote" {
    organization = "estudo1"

    workspaces {
      name = "sessao-3-backend"
    }
  }
}

provider "local" {}

resource "local_file" "state_test" {
  filename = "${path.module}/state-test.txt"
  content  = "Este arquivo está sendo gerenciado pelo Terraform."
}