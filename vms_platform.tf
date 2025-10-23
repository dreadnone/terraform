###wm_db
variable "vm_db_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "VM base image"
}

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "VM name"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v2"
  description = "VM platform"
}

/*variable "vm_db_cores" {
  type        = number
  default     = 2
  description = "VM vCPU"
}

variable "vm_db_memory" {
  type        = number
  default     = 1
  description = "VM RAM (Gb)"
}

variable "vm_db_core_fraction" {
  type        = number
  default     = 5
  description = "VM core fraction (%)"
}*/