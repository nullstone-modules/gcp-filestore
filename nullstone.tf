terraform {
  required_providers {
    ns = {
      source = "nullstone-io/ns"
    }
  }
}

data "ns_workspace" "this" {}

// Generate a random suffix to ensure uniqueness of resources
resource "random_string" "resource_suffix" {
  length  = 5
  lower   = true
  upper   = false
  numeric = false
  special = false
}

locals {
  tags          = data.ns_workspace.this.tags
  block_name    = data.ns_workspace.this.block_name
  resource_name = "${data.ns_workspace.this.block_ref}-${random_string.resource_suffix.result}"
  labels        = { for key, value in local.tags : lower(key) => value }
}
