variable "esxi_host" {
  description = "IP or DNS of ESXi host"
  default     = "192.168.1.225"
}

variable "esxi_allow_unverified_ssl" {
  description = "Verify SSL for ESXi"
  default     = true
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

variable "tfcb_org" {
  type        = string
  description = "Name of the TFCB organization"
}

variable "tfcb_workspace" {
  type        = string
  description = "Name of the TFCB workspace"
}
