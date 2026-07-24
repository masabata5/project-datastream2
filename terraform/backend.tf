terraform {
  backend "gcs" {
    bucket = "Project 2-terraform-state" # Change this to your unique bucket name for Project 2
    prefix = "terraform/state"
  }
} 