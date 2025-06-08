terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.38.0"
    }
  }
}

provider "google" {
  project = "tactical-coder-460609-r7"
}