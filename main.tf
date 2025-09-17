terraform {
  cloud {
    organization = "cantthinkofanameyet"

    workspaces {
      name = "project-a"
    }
  }

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "random" {}

resource "random_pet" "example" {
  length = 3
}

output "pet_name" {
  value = random_pet.example.id
}

