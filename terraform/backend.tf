terraform {
  backend "gcs" {
    bucket = "project-2-503411-tf-state-20260727" # Must match the bucket created by Terraform or pre-exist
    prefix = "terraform/state"
  }
} 