data "google_project" "current" {}

resource "google_service_account" "datastream_sa" {
  account_id   = "datastream-sa"
  display_name = "Datastream Service Account"
}

resource "google_project_iam_member" "roles" {
  for_each = toset([
    "roles/storage.admin",
    "roles/compute.viewer"
  ])

  project = var.project_id
  role    = each.value
  member  = "serviceAccount:${google_service_account.datastream_sa.email}"
}

resource "google_storage_bucket_iam_member" "cloudbuild_trivy_bucket_access" {
  bucket = var.trivy_report_bucket_name
  role   = "roles/storage.objectAdmin"
  member = "serviceAccount:${data.google_project.current.number}@cloudbuild.gserviceaccount.com"
}