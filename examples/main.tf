terraform {
  required_providers {
    metal = {
      source = "equinix/metal"
    }
  }
}

provider "metal" {
  auth_token = var.auth_token
}

data "metal_project" "project" {
  name = "FPF"
}

module "example_securedrop" {
  source = "./.." # "github.com/cfm/terraform-metal-securedrop-production"

  metro      = "sv"
  prefix     = "example-sd-"
  project_id = data.metal_project.project.id
}
