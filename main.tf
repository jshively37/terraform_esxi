provider "vsphere" {
  vsphere_server       = var.esxi_host
  user                 = var.esxi_username
  password             = var.esxi_password
  allow_unverified_ssl = var.esxi_allow_unverified_ssl
}

data "vsphere_datacenter" "dc" {
  name = var.vcenter_dc
}

data "vsphere_datastore" "datastore" {
  name          = var.vcenter_ds
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
  name          = var.vcenter_network
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_resource_pool" "pool" {}

resource "vsphere_virtual_machine" "vm" {
  name             = var.vm_name
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id
  wait_for_guest_net_timeout = 0
  wait_for_guest_ip_timeout  = 0

  num_cpus = 2
  memory   = 1024
  guest_id = "other3xLinux64Guest"

  network_interface {
    network_id = data.vsphere_network.network.id
  }

  disk {
    label = "disk0"
    size  = 20
  }
}
