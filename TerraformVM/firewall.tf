resource "google_compute_firewall" "allow_my_ssh" {
  name    = "allow--my-ssh"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["22" , "80", "443", "6443", "8080", "30080"]
  }

  source_ranges = ["0.0.0.0/0"]  # allow from anywhere (you can restrict later)
  target_tags   = ["ssh-http-https-access"]
}
