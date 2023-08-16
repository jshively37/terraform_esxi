variable "esxi_host" {
  description = "IP or DNS of ESXi host"
  default     = "192.168.1.220"
}

variable "esxi_allow_unverified_ssl" {
  description = "Verify SSL for ESXi"
  default     = true
}

variable "cpu_count" {
  description = "Number of CPUs"
  default     = 2
}

variable "disk_size" {
  description = "Size of the disk in GB"
  default     = 20
}

variable "memory_size" {
  description = "About of memory"
  default     = 1024
}

variable "vcenter_dc" {
  description = "Name of the vCenter DC"
  default     = "ha-datacenter"
}

variable "vcenter_ds" {
  description = "Name of the datastore"
  default     = "direct_storage"
}

variable "vcenter_network" {
  description = "Name of vCenter Network"
  default     = "VM Network"
}

variable "vm_name" {
  description = "Name of the VM to create"
  default     = "terraform-test"
}
