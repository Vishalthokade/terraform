variable "region" {
  type        = string
  description = "Region where the instances should be created."
  default     = "asia-southeast2"
}

variable "zone" {
  type        = string
  description = "Zone where the instances should be created."
  default     = "asia-southeast2-b"
}

variable "project_id" {
  description = "project of id"
  default     = "cloud-project"
}

variable "name" {
  description = "gke cluster name"
  default     = "gke-cluster-spot"
}

variable "initial_node_count" {
  description = "node count"
  default     = 3
}

variable "network" {
  description = "Network to deploy to."
  default     = "https://www.googleapis.com/compute/v1/projects/coid-nonprod/global/networks/shared-vpc-host-nonprod"
}

variable "subnetwork" {
  description = "Subnetwork to deploy to. "
  default     = "https://www.googleapis.com/compute/v1/projects/coid-nonprod/regions/asia-southeast2/subnetworks/subnet-as2-nonprod-cloud-project-nodes"
}

variable "machine_type" {
  default = "e2-highmem-8"
}

