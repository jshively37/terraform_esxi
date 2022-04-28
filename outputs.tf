output "dc_name" {
  value = data.vsphere_datacenter.dc.id

}
output "storage_id" {
  value = data.vsphere_datastore.datastore.id
}

output "network_id" {
  value = data.vsphere_network.network.id
}
