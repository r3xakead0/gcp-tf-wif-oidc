variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region for resources"
  type        = string
  default     = "us-central1"
}

variable "org" {
  description = "Allowed GitHub organization"
  type        = string
  default     = "r3xakead0"
}

variable "service_account_id" {
  description = "Service Account ID (no domain, just the account_id)"
  type        = string
  default     = "github-oidc-sa"
}
