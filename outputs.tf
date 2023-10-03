output "dc_name" {
  value = data.vsphere_datacenter.dc.id

}
output "storage_id" {
  value = data.vsphere_datastore.datastore.id
}

output "network_id" {
  value = data.vsphere_network.network.id
}

output "hcp_vault_info" {
  value = data.tfe_outputs.hcp_vault_info.nonsensitive_values
}
