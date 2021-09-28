output "app_ip_addr" {
  description = "IP address of the Application Server (for \"securedrop-admin sdconfig\")"
  value       = metal_device.app.access_public_ipv4
}

output "mon_ip_addr" {
  description = "IP address of the Monitor Server (for \"securedrop-admin sdconfig\")"
  value       = metal_device.mon.access_public_ipv4
}
