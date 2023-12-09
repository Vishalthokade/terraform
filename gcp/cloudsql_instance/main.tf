terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("C:/Users/ws_htu715/Downloads/cloud-project-9b6d339f8066.json")
  project     = var.project_id
}
resource "google_sql_database_instance" "instance1" {
  name             = var.name
  database_version = var.db_version
  region           = var.region
  settings {
    tier = var.tier
    ip_configuration {
      ipv4_enabled    = false
      private_network = var.network
    }
  }
}

resource "google_sql_database" "default1" {
  name     = "default1"
  instance = google_sql_database_instance.instance1.name
}

resource "google_sql_user" "default1" {
  name     = "default1"
  instance = google_sql_database_instance.instance1.name
  password = "password"
}