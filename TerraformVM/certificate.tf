resource "google_compute_managed_ssl_certificate" "kubernetes_cert" {
  name = "manab-kubernetes-managed-cert"

  managed {
    domains = ["kubernetes.manabpokhrel.com.np"]
  }
}
