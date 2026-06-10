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

resource "google_secret_manager_secret" "openai_api_key" {
  secret_id = "openai-secret"

  replication {
    auto {}
  }

  deletion_protection = false
}

resource "google_secret_manager_secret_version" "openai_api_key" {
  secret      = google_secret_manager_secret.openai_api_key.id
  secret_data = var.openai_api_key
}

resource "google_secret_manager_secret" "google_client_id" {
  secret_id = "google-client-id"

  replication {
    auto {}
  }

  deletion_protection = false
}

resource "google_secret_manager_secret_version" "google_client_id" {
  secret      = google_secret_manager_secret.google_client_id.id
  secret_data = var.GOOGLE_CLIENT_ID
}

resource "google_secret_manager_secret" "google_client_secret" {
  secret_id = "google-client-secret"

  replication {
    auto {}
  }

  deletion_protection = false
}

resource "google_secret_manager_secret_version" "google_client_secret" {
  secret      = google_secret_manager_secret.google_client_secret.id
  secret_data = var.GOOGLE_CLIENT_SECRET
}

resource "google_secret_manager_secret" "token_uri" {
  secret_id = "token-uri"

  replication {
    auto {}
  }

  deletion_protection = false
}

resource "google_secret_manager_secret_version" "token_uri" {
  secret      = google_secret_manager_secret.token_uri.id
  secret_data = var.TOKEN_URI
}

resource "google_secret_manager_secret" "secret_key" {
  secret_id = "secret-key"

  replication {
    auto {}
  }

  deletion_protection = false
}

resource "google_secret_manager_secret_version" "secret_key" {
  secret      = google_secret_manager_secret.secret_key.id
  secret_data = var.SECRET_KEY
}