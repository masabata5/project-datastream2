terraform {
  backend "gcs" {
    bucket = "project-2-503411-terraform-state" # Change this to your unique bucket name for Project 2
    prefix = "terraform/state"
  }
} 