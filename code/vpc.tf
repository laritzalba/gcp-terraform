 resource "google_compute_network" "vpc_network_first" {
  name = "terraform-network-first"
 } 

 output "vpc_net" {
  value = google_compute_network.vpc_network_first
 }
