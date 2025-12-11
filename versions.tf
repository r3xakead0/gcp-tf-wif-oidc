terraform {
  required_version = ">= 1.13.0"

  backend "gcs" {
    bucket = "bootcamp-478214-wif-oidc-tfstate"
    prefix = "terraform/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.13"
    }
  }
}
