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

resource "google_secret_manager_secret" "openai_secret" {
  secret_id = "openai-secret"

  replication {
    auto {}
  }
}

resource "google_secret_manager_secret_version" "openai_secret_version" {
  secret      = google_secret_manager_secret.openai_secret.id
  secret_data = var.openai_api_key
}