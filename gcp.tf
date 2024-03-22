data "google_client_config" "this" {}
data "google_compute_zones" "available" {}

locals {
  region          = data.google_client_config.this.region
  available_zones = data.google_compute_zones.available.names
}

resource "google_project_service" "filestore" {
  service                    = "file.googleapis.com"
  disable_dependent_services = false
  disable_on_destroy         = false
}
