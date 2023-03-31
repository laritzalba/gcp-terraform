provider "google" {

  credentials = file("C:/alba/.google/gcp-key.json")

  project = "terraform-project-88888"
  region  = "us-central1"
  zone    = "us-central1-c"
  # europe-west3 (Frankfurt)
}


terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.59.0"
    }
  }

  backend "gcs" {
    bucket = "terraform-bucket-alba"
    prefix = "terraform-1"
    credentials = "C:/Users/alba/.google/gcp-key.json"
  }
}


