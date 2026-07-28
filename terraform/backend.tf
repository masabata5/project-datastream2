terraform {
  backend "gcs" {
    bucket = "project-repo-498812-trivy-bucket" # Change this to your unique bucket name
    prefix = "terraform/state"
  }
} 