variable "project_id" {
  description = "project of id"
  default     = "cloud-project"
}

variable "machine_type" {
  default = "e2-highmem-4"
}

variable "image" {
  description = "Ubuntu 18.04 LTS"
  default     = "ubuntu-1804-bionic-v20221201"
}

variable "disk_size" {
  description = "size of the disk"
  default     = "700"
}

variable "disk_type" {
  description = "Balanced persistent disk"
  default     = "pd-ssd"
}

variable "name" {
  description = "sql name"
  default     = "sql-instance"
}

variable "db_version" {
  description = "db version"
  default     = "POSTGRES_14"
}

variable "region" {
  type        = string
  description = "Region where the instances should be created."
  default     = "asia-southeast2"
}

variable "tier" {
  type        = string
  description = "specify tier"
  default     = "db-f1-micro"
}

variable "network" {
  description = "private network"
  default     = "projects/coid-nonprod/global/networks/shared-vpc-host-nonprod"
}
