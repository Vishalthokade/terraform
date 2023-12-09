terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("C:/Users/ws_htu715/Downloads/sodium-wall-369513-be1497bf0eb2.json")

  project = "sodium-wall-369513"
  region  = "asia-south1-a"
  zone    = "asia-south1-a"
}

resource "google_compute_firewall" "default" {
  network = "default"
  name  = "rule-creation-using-tf"
  description     = "Example Resource"
  priority        = 9000
  enable_logging  = true
  direction       = "EGRESS"
  disabled        = false
  
  allow {
    protocol = "udp"
    ports    = ["80"]
   }
  }
