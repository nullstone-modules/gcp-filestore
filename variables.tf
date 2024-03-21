variable "capacity" {
  type        = number
  default     = 1024
  description = <<EOF
The capacity of the filestore in GiB.
For STANDARD tier, 1024GiB is the minimum.
For PREMIUM tier, 2560GiB is the minimum.
By default, the filestore is 1024GiB.
EOF
}

variable "tier" {
  type        = string
  default     = "STANDARD"
  description = <<EOF
Available choices: STANDARD, PREMIUM, BASIC_HDD, BASIC_SSD, HIGH_SCALE_SSD, ZONAL, REGIONAL and ENTERPRISE
For more info, see https://cloud.google.com/filestore/docs/reference/rest/v1/Tier.
EOF
}
