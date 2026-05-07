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
      "9600"   # Logstash monitoring API
    ]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["ssh-http-https-access"]
}