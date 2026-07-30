# 1. Create 3 separate Google Persistent Disks
resource "google_compute_disk" "ceph_disks" {
  count = 3
  name  = "ceph-disk-${count.index}"
  type  = "pd-balanced"
  zone  = var.zone # Match the zone your VMs are running in
  size  = 20               # 20 GB per disk is plenty for testing
}

# 2. Attach each disk to its corresponding VM node
resource "google_compute_attached_disk" "attach_ceph_disks1" {
  disk        = google_compute_disk.ceph_disks[1].id
  instance    = google_compute_instance.worker1.id # Replace with your actual VM resource name reference
  zone         = var.zone
  device_name = "ceph-device"
}
resource "google_compute_attached_disk" "attach_ceph_disks2" {
  disk        = google_compute_disk.ceph_disks[0].id
  instance    = google_compute_instance.worker2.id # Replace with your actual VM resource name reference
  zone         = var.zone
  device_name = "ceph-device"
}
resource "google_compute_attached_disk" "attach_ceph_disks3" {
  disk        = google_compute_disk.ceph_disks[2].id
  instance    = google_compute_instance.worker3.id # Replace with your actual VM resource name reference
  zone         = var.zone
  device_name = "ceph-device"
}
