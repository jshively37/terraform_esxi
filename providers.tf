terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "2.4.3"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.49.1"
    }
  }
}

provider "vsphere" {
  vsphere_server       = var.esxi_host
  allow_unverified_ssl = var.esxi_allow_unverified_ssl
}

provider "tfe" {

}
