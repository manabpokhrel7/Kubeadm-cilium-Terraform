resource "google_compute_global_forwarding_rule" "http" {
  name       = "kubernetes-http-rule"
  port_range = "80"
  target     = google_compute_target_http_proxy.http.id
  ip_address = google_compute_global_address.lb_ip.address
}

resource "google_compute_target_http_proxy" "http" {
  name    = "kubernetes-http-proxy"
  url_map = google_compute_url_map.main.id
}

resource "google_compute_url_map" "main" {
  name = "manab-kubernetes-url-map"

  default_service = google_compute_backend_service.kubernetes.id
}
resource "google_compute_instance_group" "k8s_workers" {
  name = "k8s-workers"
  zone = "us-central1-a"

  instances = [
    google_compute_instance.worker1.self_link,
    google_compute_instance.worker2.self_link
  ]

  named_port {
    name = "http"
    port = 30080
  }
}
resource "google_compute_backend_service" "kubernetes" {
  name                  = "kubernetes-backend"
  protocol              = "HTTP"
  load_balancing_scheme = "EXTERNAL_MANAGED"

  backend {
    group = google_compute_instance_group.k8s_workers.self_link
  }

  health_checks = [
    google_compute_health_check.k8s.self_link
  ]
}
resource "google_compute_health_check" "k8s" {
  name = "k8s-nodeport-health"

  http_health_check {
    port         = 30080
    request_path = "/"
  }
}
resource "google_compute_global_address" "lb_ip" {
  name = "kubernetes-lb-ip"
}
