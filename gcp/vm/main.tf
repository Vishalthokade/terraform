terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("C:/Users/ws_htu715/Downloads/cloud-project.json")
}

locals {
  hostname = var.hostname == "" ? "default" : var.hostname
}

resource "google_compute_instance" "jenkins" {
  count                     = 1
  project                   = var.project_id
  zone                      = var.zone
  name                      = local.hostname
  machine_type              = var.machine_type
  allow_stopping_for_update = var.allow_stopping_for_update
  metadata_startup_script   = var.metadata_startup_script

  boot_disk {
    initialize_params {
      image = var.image
      size  = var.disk_size
      type  = var.disk_type
    }
  }
  network_interface {
    subnetwork         = var.subnetwork
    subnetwork_project = var.subnetwork_project
  }
  service_account {
    email  = "project-service-account@cloud-project.iam.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

  dynamic "attached_disk" {
    for_each = var.attached_disk
    content {
      source                  = lookup(attached_disk.value, "source", null)
      device_name             = lookup(attached_disk.value, "device_name", null)
      mode                    = lookup(attached_disk.value, "mode", null)
      disk_encryption_key_raw = lookup(attached_disk.value, "disk_encryption_key_raw", null)
      kms_key_self_link       = lookup(attached_disk.value, "kms_key_self_link", null)
    }
  }
  tags = [var.project_id, "ssh"]
}
