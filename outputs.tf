output "id" {
  value       = join("", google_compute_network.default.*.id)
  description = "An identifier for the resource."
}

output "gateway_ipv4" {
  value       = join("", google_compute_network.default.*.gateway_ipv4)
  description = "The gateway address for default routing out of the network."
}

output "self_link" {
  value       = join("", google_compute_network.default.*.self_link)
  description = "The URI of the created resource."
}
