variable "esxi_host" {
  description = "IP or DNS of ESXi host"
  default     = "192.168.1.225"
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
  description = "Amount of memory"
  default     = 1024
}

variable "resource_pool" {
  description = "Resource pool name"
  default     = "pool"
}

variable "vcenter_dc" {
  description = "Name of the vCenter DC"
  default     = "Datacenter"
}

variable "vcenter_ds" {
  description = "Name of the datastore"
  default     = "data"
}

variable "vcenter_network" {
  description = "Name of vCenter Network"
  default     = "VM Network"
}

variable "vm_name" {
  description = "Name of the VM to create"
  default     = "terraform-test"
}
