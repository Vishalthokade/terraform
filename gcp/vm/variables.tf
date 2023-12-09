variable "project_id" {
  description = "project of id"
  default     = "cloud-project"
}

variable "machine_type" {
  default = "e2-standard-8"
}

variable "image" {
  description = "Ubuntu 18.04 LTS"
  default     = "windows-server-2022-dc-v20230111"
}

variable "disk_size" {
  description = "size of the disk"
  default     = "500"
}

variable "disk_type" {
  description = "Balanced persistent disk"
  default     = "pd-ssd"
}

variable "subnetwork" {
  description = "Subnet to deploy to. Only one of network or subnetwork should be specified"
  default     = "subnet-as2-nonprod-cloud-project-nodes"
}

variable "subnetwork_project" {
  description = "The project that subnetwork belongs to"
  default     = "coid-nonprod"
}

variable "name" {
  description = "vm name"
  default     = "jenkins"
}

variable "hostname" {
  description = "Hostname of instances"
  default     = "jenkins"
}

variable "access_config" {
  description = "Access configurations, i.e. IPs via which the VM instance can be accessed via the Internet."
  type = list(object({
    nat_ip       = string
    network_tier = string
  }))
  default = []
}

variable "region" {
  type        = string
  description = "Region where the instances should be created."
  default     = "asia-southeast2"
}

variable "zone" {
  type        = string
  description = "Zone where the instances should be created. If not specified, instances will be spread across available zones in the region."
  default     = "asia-southeast2-a"
}

variable "metadata_startup_script" {
  type        = string
  description = "(Optional) An alternative to using the startup-script metadata key, except this one forces the instance to be recreated (thus re-running the script) if it is changed. This replaces the startup-script metadata key on the created instance and thus the two mechanisms are not allowed to be used simultaneously. Users are free to use either mechanism - the only distinction is that this separate attribute will cause a recreate on modification."
  default     = null
}

variable "allow_stopping_for_update" {
  type        = bool
  description = "(Optional) Allows Terraform to stop the instance to update its properties. Defaults to false."
  default     = false
}

variable "network_tier" {
  description = "Network network_tier"
  default     = "PREMIUM"
}

variable "attached_disk" {
  default = {}
}

variable "address_type" {
  description = "whether address is internal or external"
  default     = "EXTERNAL"
}
