###cloud vars


variable "cloud_id" {
  type        = string
  default = "b1gf3uq2e7org19bmnfj"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default = "b1go9gufkn4ii3hfibvu"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEJUv2mmEgzA4rqKKKNEv9AQ4zPOgPilXJBHS4jZDavE root@andrew-pc"
  description = "ssh-keygen -t ed25519"
}


###wm_web
variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "VM base image"
}

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "VM name"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v2"
  description = "VM platform"
}

/*variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "VM vCPU"
}

variable "vm_web_memory" {
  type        = number
  default     = 1
  description = "VM RAM (Gb)"
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 5
  description = "VM core fraction (%)"
}*/
variable "vms_resources" {
  type         = map(map(number))
  default = {
    "web" = {
      cores = 2
      memory = 1
      core_fraction = 5
    }
    "db" = {
      cores = 2
      memory = 1
      core_fraction = 5
    }
  }
}

variable "metadata" {
  type = map(any)
  default = {
    "serial-port-enable" = 1
    "ssh-keys"           = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEJUv2mmEgzA4rqKKKNEv9AQ4zPOgPilXJBHS4jZDavE root@andrew-pc"
  }
  description = "Metadata for VMs"
}