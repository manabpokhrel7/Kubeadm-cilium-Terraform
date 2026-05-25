resource "google_secret_manager_secret" "secret-basic" {
  secret_id = "secret"

  labels = {
    label = "my-label"
  }

  replication {
    user_managed {
      replicas {
        location = "us-west1"
      }
      replicas {
        location = "us-east1"
      }
    }
  }
  deletion_protection = false
}