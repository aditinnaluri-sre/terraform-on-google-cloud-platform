resource "google_storage_bucket" "buk-dev-tans-trainings" {
  name     = "var.bucket_name"
  location = "var.region"
  project  = "var.project_id"


  force_destroy = var.force_destory

  force_destroy

  lifecycle_rule {
    condition { num_newer_versions = "var.num_newer_versions" }
    action { type = "Delete" }
  }

  labels = {
    env        = "var.environment"
    managed-by = "terraform"
  }

}
