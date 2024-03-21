output "filestore_id" {
  value       = google_filestore_instance.this.id
  description = "string ||| The ID of the Filestore instance represented as 'projects/{{project}}/locations/{{location}}/instances/{{name}}'"
}

output "filestore_name" {
  value       = google_filestore_instance.this.name
  description = "string ||| The name of the Filestore instance"
}
