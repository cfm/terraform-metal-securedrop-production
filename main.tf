terraform {
  required_providers {
    metal = {
      source = "equinix/metal"
    }
  }
}

resource "metal_device" "app" {
  hostname         = "${var.prefix}app"
  plan             = "t1.small.x86"
  metro            = var.metro
  operating_system = "ubuntu_20_04"
  billing_cycle    = "hourly"
  project_id       = var.project_id
  user_data        = file("${path.module}/user_data.yml")
}

resource "metal_device" "mon" {
  hostname         = "${var.prefix}mon"
  plan             = "t1.small.x86"
  metro            = var.metro
  operating_system = "ubuntu_20_04"
  billing_cycle    = "hourly"
  project_id       = var.project_id
  user_data        = file("${path.module}/user_data.yml")
}
