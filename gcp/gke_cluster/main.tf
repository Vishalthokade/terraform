# Configure the Google Cloud provider
provider "google" {
  credentials = file("C:/Users/ws_htu715/Downloads/cloud-project-9b6d339f8066.json")
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

# Create a GKE cluster
resource "google_container_cluster" "gke-cluster-spot" {
  name                      = var.name
  location                  = var.zone
  subnetwork                = var.subnetwork
  enable_kubernetes_alpha   = false
  enable_legacy_abac        = false
  network                   = var.network
  default_max_pods_per_node = 32

  ip_allocation_policy {
    cluster_secondary_range_name  = "subnet-as2-nonprod-pods"
    services_secondary_range_name = "subnet-as2-nonprod-svcs"
  }

  node_pool {
    initial_node_count = var.initial_node_count
    max_pods_per_node  = 32
    name               = "spot-pool"

    node_config {
      preemptible     = true
      machine_type    = var.machine_type
      disk_size_gb    = 100
      service_account = "project-service-account@cloud-project.iam.gserviceaccount.com"
      tags            = ["cloud-project-9b6d339f8066.json"]
    }

  }
  vertical_pod_autoscaling {
    enabled = false
  }
}