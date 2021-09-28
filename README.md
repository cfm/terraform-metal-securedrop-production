# terraform-metal-securedrop-production

Terraform module for standing up a SecureDrop production environment at
Equinix Metal (fka Packet).  After `terraform apply`, you can pick up
SecureDrop's installation instructions at the ["Install SecureDrop
Servers"][install] step.

[install]: https://docs.securedrop.org/en/stable/install.html#install-securedrop-servers

## WARNING

This module is a shortcut for *testing* SecureDrop, not for *running*
SecureDrop.

**Do not use the servers provisioned by this module to run a real
SecureDrop instance.**  [SecureDrop is designed to be run on servers in
your physical custody.][servers]

[servers]: https://docs.securedrop.org/en/stable/hardware.html?highlight=third-party%20datacenters#servers

## Prerequisites

Your [Tails admin workstation][admin]'s SSH public key
(`amnesia@amnesia`) is registered in your Equinix Metal account at
either the project or the user level.

[admin]: https://docs.securedrop.org/en/stable/set_up_admin_tails.html
