resource "google_compute_managed_ssl_certificate" "kubernetes_cert" {
  name = "manab-kubernetes-managed-cert"

  managed {
    domains = [
      "kubernetes.manabpokhrel.com.np",
      "kibana.manabpokhrel.com.np",
      "grafana.manabpokhrel.com.np",
      "prometheus.manabpokhrel.com.np"
    ]
  }
}
