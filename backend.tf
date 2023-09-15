terraform {
  cloud {
    organization = "jshively_hashi"
    workspaces {
      name = "home-lab-vmware"
    }
  }
}
