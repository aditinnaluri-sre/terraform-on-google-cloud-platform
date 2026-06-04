project_id         = "terraform-gcp-498312"
region             = "europe-west2"
environment        = "dev"
bucket_name        = "tf-state-$project_id" # must be globally unique
force_destroy      = false
versioning_enabled = true
num_newer_versions = 5