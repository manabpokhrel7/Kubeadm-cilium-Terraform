output "control_public_ip" {
  value = google_compute_instance.control.network_interface[0].access_config[0].nat_ip
}
output "worker1_public_ip" {
  value = google_compute_instance.worker1.network_interface[0].access_config[0].nat_ip
}
output "worker2_public_ip" {
  value = google_compute_instance.worker2.network_interface[0].access_config[0].nat_ip
}
output "load_balancer_ip" {
  value = google_compute_global_address.lb_ip.address
}
