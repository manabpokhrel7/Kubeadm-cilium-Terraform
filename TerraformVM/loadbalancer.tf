# #This lb is used to point the users traffic to the worker nodes
#
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

###TCP Load balancer method
# 1. Create a Regional Target Pool matching your worker zone
resource "google_compute_target_pool" "k8s_pool" {
  name   = "k8s-target-pool"
  region = "us-west1"

  instances = [
    google_compute_instance.worker1.self_link,
    google_compute_instance.worker2.self_link
  ]

  health_check = google_compute_http_health_check.l4_health.name
}

# 2. Simple HTTP (Port 80) Forwarding Rule
resource "google_compute_forwarding_rule" "http" {
  name        = "k8s-l4-http"
  region      = "us-west1"
  port_range  = "80"
  target      = google_compute_target_pool.k8s_pool.id
  ip_address  = google_compute_global_address.lb_ip.address
}

# 3. Simple HTTPS (Port 443) Forwarding Rule - BLIND PASS
resource "google_compute_forwarding_rule" "https" {
  name        = "k8s-l4-https"
  region      = "us-west1"
  port_range  = "443"
  target      = google_compute_target_pool.k8s_pool.id
  ip_address  = google_compute_global_address.lb_ip.address
}

# 4. Standard L4 Legacy HTTP Health Check used by Target Pools
resource "google_compute_http_health_check" "l4_health" {
  name         = "k8s-l4-health"
  port         = 30080
  request_path = "/healthz" # Ensure Envoy Gateway exposes a health check here
}
resource "google_compute_global_address" "lb_ip" {
  name = "kubernetes-lb-ip"
}