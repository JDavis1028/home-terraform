locals {
  vms = {

    "pd1-vm-test" = {
      vmid        = 120
      target_node = "PVEProdesk1"
      memory      = 2048
      cores       = 2
      disk0_size  = "64G"
      disk1_size  = "8"
      ip          = "192.168.1.30/24"
    }

  }

  database_vms = {

    "pd1-vm-database" = {
      vmid        = 100
      target_node = "PVEProdesk1"
      memory      = 8192
      cores       = 2
      disk0_size  = "6G"
      disk1_size  = "64G"
      ip          = "192.168.1.19/24"
    }

  }
}
