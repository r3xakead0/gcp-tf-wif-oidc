terraform {
  required_version = ">= 1.13.0"

  backend "gcs" {
    bucket = "bucket-wif-oidc-tfstate"
    prefix = "terraform/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.13"
    }
  }
}
