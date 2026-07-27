resource "google_storage_bucket" "terraform_state" {
  name     = "${var.project_id}-tf-state-20260727-01"
  location = var.region

  versioning {
    enabled = true
  }
} 