terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.2.1"
    }
  }
}


provider "google" {
  region = "us-central1"
}