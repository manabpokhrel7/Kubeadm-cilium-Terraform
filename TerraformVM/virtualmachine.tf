variable "control_names" {
  type    = list(string)
  default = ["control1", "control2", "control3"]
}

variable "regional_ip"{
  type = list(string)
  default = ["controladd1", "controladd2", "controladd3"]
}

resource "google_compute_address" "control_ip" {
  for_each = toset(var.regional_ip)
  name   = each.value
  region = var.region
}

resource "google_compute_instance" "control" {
  for_each     = toset(var.control_names)
  name         = each.value
  machine_type = "e2-standard-2"
  zone         = var.zone
  tags = ["ssh-http-https-access"]
  allow_stopping_for_update = true
  boot_disk {
    initialize_params {
      image = "rocky-linux-cloud/rocky-linux-9"
    }
  }
  network_interface {
    network       = "default"
    access_config {
      nat_ip = google_compute_address.control_ip[var.regional_ip[index(var.control_names, each.value)]].address
      }
    }  # gives public IP
  metadata = {
    ssh-keys = "manabpokhrel7:${var.ssh_public_key}"
  }
}

resource "google_compute_instance" "worker1" {
#   for_each = local.nodes
  name         = "worker1"
  machine_type = "e2-standard-4"
  zone         = var.zone
  tags = ["ssh-http-https-access"]
  allow_stopping_for_update = true
  boot_disk {                       
    initialize_params {             
      image = "rocky-linux-cloud/rocky-linux-9"
    }                               
  }
  network_interface {
    network       = "default"
#     access_config {}  # gives public IP
  }
  metadata = {
    ssh-keys = "manabpokhrel7:${var.ssh_public_key}"
  }
}
resource "google_compute_instance" "worker2" {
#   for_each = local.nodes
  name         = "worker2"
  machine_type = "e2-standard-4"
  zone         = var.zone
  allow_stopping_for_update = true
  tags = ["ssh-http-https-access"]
  boot_disk {                       
    initialize_params {             
      image = "rocky-linux-cloud/rocky-linux-9"
    }                               
  }
  network_interface {
    network       = "default"
#     access_config {}  # gives public IP
  }
  metadata = {
    ssh-keys = "manabpokhrel7:${var.ssh_public_key}"
  }
}
resource "google_compute_instance" "worker3" {
#   for_each = local.nodes
  name         = "worker3"
  machine_type = "e2-standard-4"
  zone         = var.zone
  allow_stopping_for_update = true
  tags = ["ssh-http-https-access"]
  boot_disk {
    initialize_params {
      image = "rocky-linux-cloud/rocky-linux-9"
    }
  }
  network_interface {
    network       = "default"
#     access_config {}  # gives public IP
  }
  metadata = {
    ssh-keys = "manabpokhrel7:${var.ssh_public_key}"
  }
}