locals {
  share_name = "primary"
  reserved_ip_range = "10.127.0.0/29"
}

resource "google_filestore_instance" "this" {
  name   = local.resource_name
  labels = local.labels
  tier   = var.tier

  file_shares {
    name        = local.reserved_ip_range
    capacity_gb = var.capacity
  }

  networks {
    modes             = ["MODE_IPV4"]
    network           = local.vpc_name
    connect_mode      = "DIRECT_PEERING"
    reserved_ip_range = local.reserved_ip_range
  }
}
