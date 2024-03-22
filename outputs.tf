output "filestore_id" {
  value       = google_filestore_instance.this.id
  description = "string ||| The ID of the Filestore instance represented as 'projects/{{project}}/locations/{{location}}/instances/{{name}}'"
}

output "filestore_name" {
  value       = google_filestore_instance.this.name
  description = "string ||| The name of the Filestore instance."
}

output "filestore_tier" {
  value       = google_filestore_instance.this.tier
  description = "string ||| A tier of storage that this Filestore instance was created."
}

output "filestore_location" {
  value       = google_filestore_instance.this.location
  description = "string ||| The GCP location of the Filestore instance."
}

output "filestore_capacity" {
  value       = var.capacity
  description = "number ||| The capacity of the Filestore in GiB."
}

output "filestore_ips" {
  value       = google_filestore_instance.this.networks[0].ip_addresses
  description = "string ||| The IP addresses of the Filestore."
}

output "filestore_share_name" {
  value       = google_filestore_instance.this.file_shares[0].name
  description = "string ||| The name of the sole file share created on the Filestore."
}
