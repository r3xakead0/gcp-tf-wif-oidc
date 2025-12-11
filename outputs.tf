output "gcp_sa_email" {
  description = "Email of the created GCP Service Account"
  value       = google_service_account.github_sa.email
}

output "gcp_wif_provider" {
  description = "Workload Identity Federation Provider resource name"
  # projects/$PROJECT_NUMBER/locations/global/workloadIdentityPools/github-pool/providers/github-provider
  value = "projects/${data.google_project.project.number}/locations/global/workloadIdentityPools/${google_iam_workload_identity_pool.github_pool.workload_identity_pool_id}/providers/${google_iam_workload_identity_pool_provider.github_provider.workload_identity_pool_provider_id}"
}
