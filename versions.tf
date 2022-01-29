terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.74.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.0.0"
    }
  }

  required_version = ">= 0.14.0"
  cloud {
    organization = "e-grant"
    workspaces {
      name = "test_tfc-guide-example"
    }
  }
}
