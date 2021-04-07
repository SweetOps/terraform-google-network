resource "google_compute_network" "default" {
  count = module.this.enabled ? 1 : 0

  name                            = module.this.id
  auto_create_subnetworks         = var.auto_create_subnetworks
  project                         = var.project
  description                     = var.description
  routing_mode                    = var.routing_mode
  mtu                             = var.mtu
  delete_default_routes_on_create = var.delete_default_routes_on_create
}
