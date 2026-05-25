resource "google_compute_address" "tcp_lb_ip" {
  name   = "control-tcp-ip"
  region = "us-west1"
}

resource "google_compute_instance_group" "k8s_control_planes" {
  name = "k8s-control-planes"
  zone = "us-west1-a"

    instances = [for instance in google_compute_instance.control : instance.self_link]


  named_port {
    name = "kube-api"
    port = 6443
  }
}

resource "google_compute_region_health_check" "k8s_control" {
  name   = "k8s-control-health"
  region = "us-west1"

  tcp_health_check {
    port = 6443
  }
}

resource "google_compute_region_backend_service" "control_plane" {
  name                  = "control-plane-backend"
  region                = "us-west1"
  protocol              = "TCP"
  load_balancing_scheme = "EXTERNAL"
  health_checks         = [google_compute_region_health_check.k8s_control.id]

  backend {
    group          = google_compute_instance_group.k8s_control_planes.self_link
    balancing_mode = "CONNECTION"
  }
}

resource "google_compute_forwarding_rule" "control" {
  name                  = "kubernetes-control-rule"
  region                = "us-west1"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL"
  ports                 = ["6443"]
  ip_address            = google_compute_address.tcp_lb_ip.address
  backend_service       = google_compute_region_backend_service.control_plane.id
}