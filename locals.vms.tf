locals {
  vms = {

    "pd1-vm-docker-1" = {
      vmid        = 100
      target_node = "PVEProdesk1"
      memory      = 3072
      cores       = 2
      disk0_size  = "6G"
      disk1_size  = "32G"
      ip          = "192.168.1.15/24"
    }

    # "pd1-vm-docker-2" = {
    #   vmid        = 102
    #   target_node = "PVEProdesk1"
    #   memory      = 3072
    #   cores       = 2
    #  disk1_size  = "32G"
    #  ip = "192.168.1.16/24"
    # }

  }

}
