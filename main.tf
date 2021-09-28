terraform {
  required_providers {
    metal = {
      source = "equinix/metal"
    }
  }
}

variable "auth_token" {
  sensitive = true
}

variable "metro" {}

variable "project" {}

provider "metal" {
  auth_token = var.auth_token
}

data "metal_project" "project" {
  name = var.project
}

data "template_file" "user_data" {
  template = file("user_data.yml")
}

resource "metal_device" "app" {
  hostname         = "sd-app"
  plan             = "t1.small.x86"
  metro            = var.metro
  operating_system = "ubuntu_20_04"
  billing_cycle    = "hourly"
  project_id       = data.metal_project.project.id
  user_data        = data.template_file.user_data.rendered
}

resource "metal_device" "mon" {
  hostname         = "sd-mon"
  plan             = "t1.small.x86"
  metro            = var.metro
  operating_system = "ubuntu_20_04"
  billing_cycle    = "hourly"
  project_id       = data.metal_project.project.id
  user_data        = data.template_file.user_data.rendered
}
