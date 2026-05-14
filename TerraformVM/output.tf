output "control_public_ip" {
  value = {
    for k, v in google_compute_instance.control : k =>{
      nat_ip = v.network_interface[0].access_config[0].nat_ip
    }
  }
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
output "tcp_load_balancer_ip" {
  value = google_compute_address.tcp_lb_ip.address
}

