variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCS bucket location (e.g. asia-southeast1)"
  type        = string
}

variable "environment" {
  description = "Deployment environment (dev / staging / prod)"
  type        = string
  default     = "prod"
}

variable "bucket_name" {
  description = "GCS bucket name — must be globally unique"
  type        = string
}

variable "force_destroy" {
  description = "Allow bucket deletion even if it contains objects"
  type        = bool
  default     = false
}

variable "versioning_enabled" {
  description = "Enable object versioning"
  type        = bool
  default     = true
}

variable "num_newer_versions" {
  description = "Number of versions to keep before deleting old ones"
  type        = number
  default     = 5
}