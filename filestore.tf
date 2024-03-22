locals {
  share_name        = "primary"
  reserved_ip_range = "10.127.0.0/29"
}

resource "google_filestore_instance" "this" {
  depends_on = [google_project_service.filestore]

  name     = local.resource_name
  labels   = local.labels
  tier     = var.tier
  location = local.available_zones[0]

  file_shares {
    name        = local.share_name
    capacity_gb = var.capacity
  }

  networks {
    modes             = ["MODE_IPV4"]
    network           = local.vpc_name
    connect_mode      = "DIRECT_PEERING"
    reserved_ip_range = local.reserved_ip_range
  }
}
