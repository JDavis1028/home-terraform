locals {
  vms = {

    "pd1-vm-database" = {
      vmid        = 100
      target_node = "PVEProdesk1"
      memory      = 4098
      cores       = 2
      disk0_size  = "6G"
      disk1_size  = "32G"
      ip          = "192.168.1.19/24"
    }

  }
}
