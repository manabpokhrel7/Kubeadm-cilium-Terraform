resource "google_compute_firewall" "allow_my_ssh" {
  name    = "allow--my-ssh"
  network = "default"

  allow {
    protocol = "tcp"
    ports = [
      "22",    # SSH
      "80",    # HTTP
      "443",   # HTTPS
      "6443",  # Kubernetes API
      "8080",  # App / testing
      "30080", # Gateway NodePort
      "3000",  # Grafana
      "5044",  # Logstash Beats input
      "5601",  # Kibana
      "9090",  # Prometheus
      "9200",  # Elasticsearch API
      "9300",  # Elasticsearch cluster communication
      "9600",   # Logstash monitoring API
      # Rook-Ceph
      "3300",        # Ceph Messenger v2
      "6789",        # Ceph Messenger v1
      "6800-7568",   # Ceph daemon communication
      # PostgreSQL (only if accessed externally)
      "5432"
    ]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["ssh-http-https-access"]
}