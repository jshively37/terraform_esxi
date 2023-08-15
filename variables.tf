variable "esxi_host" {
  description = "IP or DNS of ESXi host"
  default     = "192.168.1.220"
}

variable "esxi_allow_unverified_ssl" {
  description = "Verify SSL for ESXi"
  default     = true
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
