# #This lb is used to point the users traffic to the worker nodes layer 7 lb with TLS
# Overkill for this since envoy can do the TLS termination for free
# resource "google_compute_global_forwarding_rule" "http" {
#   name       = "kubernetes-http-rule"
#   port_range = "80"
#   target     = google_compute_target_http_proxy.http.id
#   ip_address = google_compute_global_address.lb_ip.address
# }
# resource "google_compute_global_forwarding_rule" "https" {
#   name       = "kubernetes-https-rule"
#   port_range = "443"
#   target     = google_compute_target_https_proxy.https.id
#   ip_address = google_compute_global_address.lb_ip.address
# }
# resource "google_compute_target_http_proxy" "http" {
#   name    = "kubernetes-http-proxy"
#   url_map = google_compute_url_map.main.id
# }
# resource "google_compute_target_https_proxy" "https" {
#   name             = "kubernetes-https-proxy"
#   url_map          = google_compute_url_map.main.id
#   ssl_certificates = [google_compute_managed_ssl_certificate.kubernetes_cert.id]
# }
#
# resource "google_compute_url_map" "main" {
#   name = "manab-kubernetes-url-map"
#
#   default_service = google_compute_backend_service.kubernetes.id
# }
# resource "google_compute_instance_group" "k8s_workers" {
#   name = "k8s-workers"
#   zone = "us-west1-a"
#
#   instances = [
#     google_compute_instance.worker1.self_link,
#     google_compute_instance.worker2.self_link
#   ]
#
#   named_port {
#     name = "http"
#     port = 30080
#   }
# }
# resource "google_compute_backend_service" "kubernetes" {
#   name                  = "kubernetes-backend"
#   protocol              = "HTTP"
#   load_balancing_scheme = "EXTERNAL_MANAGED"
#   port_name             = "http"
#   backend {
#     group = google_compute_instance_group.k8s_workers.self_link
#   }
#
#   health_checks = [
#     google_compute_health_check.k8s.self_link
#   ]
# }
# resource "google_compute_health_check" "k8s" {
#   name = "k8s-nodeport-health"
#
#   http_health_check {
#     port         = 30080
#     request_path = "/"
#     host         = "kubernetes.manabpokhrel.com.np"
#   }
# }
# resource "google_compute_global_address" "lb_ip" {
#   name = "kubernetes-lb-ip"
# }
###TCP Load balancer method Layer 4 load balancer without tls
# 1. Use a modern Regional Forwarding Rule for Port 80 (HTTP)
resource "google_compute_forwarding_rule" "http" {
  name                  = "k8s-l4-http"
  region                = "us-west1"
#   port_range            = "80"
  load_balancing_scheme = "EXTERNAL" # Defines it as an L4 Network LB
  backend_service       = google_compute_region_backend_service.k8s_l4_backend.id
  ip_address            = google_compute_address.lb_ip.address
  ip_protocol           = "TCP"
  ports                 = ["80"]
}

# 2. Use a modern Regional Forwarding Rule for Port 443 (HTTPS) - BLIND PASS
resource "google_compute_forwarding_rule" "https" {
  name                  = "k8s-l4-https"
  region                = "us-west1"
#   port_range            = "443"
  load_balancing_scheme = "EXTERNAL" # Defines it as an L4 Network LB
  backend_service       = google_compute_region_backend_service.k8s_l4_backend.id
  ip_address            = google_compute_address.lb_ip.address
  ip_protocol           = "TCP"
  ports                 = ["443"]
}
resource "google_compute_instance_group" "k8s_workers" {
  name = "k8s-workers"
  zone = "us-west1-a"

  instances = [
    google_compute_instance.worker1.self_link,
    google_compute_instance.worker2.self_link
  ]

  named_port {
    name = "http"
    port = 80
  }
}
# 3. Create the modern L4 Regional Backend Service
resource "google_compute_region_backend_service" "k8s_l4_backend" {
  name                  = "k8s-l4-backend"
  region                = "us-west1"
  protocol              = "TCP" # Blindly passes raw TCP streams
  load_balancing_scheme = "EXTERNAL"
  port_name             = "http"

  backend {
    group = google_compute_instance_group.k8s_workers.self_link # Reuses your worker instance group
    balancing_mode = "CONNECTION"
  }

  health_checks = [google_compute_region_health_check.l4_tcp_health.id]
}

# 4. Your TCP Health Check (Converted to Regional to match the backend)
resource "google_compute_region_health_check" "l4_tcp_health" {
  name               = "k8s-l4-tcp-health"
  region             = "us-west1"
  check_interval_sec = 5
  timeout_sec        = 5

  tcp_health_check {
    port = 80 # Plain TCP socket check on your Envoy NodePort
  }
#   http_health_check {
#     port         = 30080
#     request_path = "/"
#   }
}

# Keep your static IP address block exactly as is
resource "google_compute_address" "lb_ip" {
  name   = "kubernetes-lb-ip"
  region = "us-west1" # Must match the region of your forwarding rules
}
