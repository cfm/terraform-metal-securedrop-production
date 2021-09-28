variable "metro" {
  description = "Equinix Metal metro code (e.g., \"sv\")"
}

variable "prefix" {
  default     = "sd-"
  description = "prefix for server hostnames"
}

variable "project_id" {
  description = "ID of the Equinix Metal project to use"
}
