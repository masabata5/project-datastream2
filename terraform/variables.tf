variable "project_id" {
  type        = string
  description = "The Google Cloud Project ID"
}

variable "region" {
  type        = string
  description = "The target GCP region for resources"
  default     = "us-east1"
}

variable "zone" {
  type        = string
  description = "The target GCP zone for the VM"
  default     = "us-east1-b"
}

variable "trivy_report_bucket_name" {
  type        = string
  description = "The Cloud Storage bucket used by Cloud Build for Trivy reports"
  default     = "project-repo-498812-trivy-bucket"
}