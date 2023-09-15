locals {
  server_config = yamldecode(file("source/servers.yaml"))
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

data "vsphere_resource_pool" "pool" {
  name          = var.resource_pool
  datacenter_id = data.vsphere_datacenter.dc.id
}

resource "vsphere_virtual_machine" "vm" {
  count                      = length(local.server_config.servers)
  name                       = local.server_config.servers[count.index].name
  resource_pool_id           = data.vsphere_resource_pool.pool.id
  datastore_id               = data.vsphere_datastore.datastore.id
  wait_for_guest_net_timeout = 0
  wait_for_guest_ip_timeout  = 0

  num_cpus = local.server_config.servers[count.index].cpu_count
  memory   = local.server_config.servers[count.index].memory_size
  guest_id = "other3xLinux64Guest"

  network_interface {
    network_id = data.vsphere_network.network.id
  }

  disk {
    label = "disk0"
    size  = local.server_config.servers[count.index].disk_size
  }
}
