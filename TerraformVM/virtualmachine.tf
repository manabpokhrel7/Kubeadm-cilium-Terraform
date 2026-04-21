# ### creating multi vars
# locals {
# 	nodes = {
# 		control = { computer_name = "control1" }
# 		worker  = { computer_name = "control2" }
# 	}
# }


resource "google_compute_instance" "control" {
#   for_each = local.nodes
  name         = "control"
  machine_type = "e2-medium"
  zone         = "us-central1-c"
  tags = ["ssh-access"]
  boot_disk {
    initialize_params {
      image = "rocky-linux-cloud/rocky-linux-9"
    }
  }
  network_interface {
    network       = "default"
    access_config {}  # gives public IP
  }
  metadata = {
    ssh-keys = "manabpokhrel7:${var.ssh_public_key}"
  }
}

resource "google_compute_instance" "worker1" {
#   for_each = local.nodes
  name         = "worker1"
  machine_type = "e2-medium"
  zone         = "us-central1-c"
  tags = ["ssh-access"]
  boot_disk {                       
    initialize_params {             
      image = "rocky-linux-cloud/rocky-linux-9"
    }                               
  }
  network_interface {
    network       = "default"
    access_config {}  # gives public IP
  }
  metadata = {
    ssh-keys = "manabpokhrel7:${var.ssh_public_key}"
  }
}
resource "google_compute_instance" "worker2" {
#   for_each = local.nodes
  name         = "worker2"
  machine_type = "e2-medium"
  zone         = "us-central1-c"
  tags = ["ssh-access"]
  boot_disk {                       
    initialize_params {             
      image = "rocky-linux-cloud/rocky-linux-9"
    }                               
  }
  network_interface {
    network       = "default"
    access_config {}  # gives public IP
  }
  metadata = {
    ssh-keys = "manabpokhrel7:${var.ssh_public_key}"
  }
}

