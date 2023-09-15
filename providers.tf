provider "vsphere" {
  vsphere_server       = var.esxi_host
  allow_unverified_ssl = var.esxi_allow_unverified_ssl
}
