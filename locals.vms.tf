locals {
  vms = {

  }

  database_vms = {

    "pd1-vm-database" = {
      vmid        = 101
      target_node = "PVEProdesk1"
      memory      = 8192
      cores       = 2
      disk0_size  = "6G"
      disk1_size  = "64G"
      ip          = "192.168.25.21/24"
    }

  }
}
