resource "google_compute_router" "nat_router" {
  name    = "k8s-nat-router"
  region  = "us-west1"
  network = "default"
}

resource "google_compute_router_nat" "nat" {
  name                               = "k8s-cloud-nat"
  router                             = google_compute_router.nat_router.name
  region                             = google_compute_router.nat_router.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}