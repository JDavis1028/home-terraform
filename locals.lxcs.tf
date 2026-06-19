locals {
  lxc = {
    "pd1-lxc-homepage" = {
      hostname    = "pd1-lxc-homepage"
      target_node = "PVEProdesk1"
      vmid        = 151
      cores       = 2
      memory      = 2048
      ip          = "192.168.1.11/24"
      size = "20G"
    }

    "pd1-lxc-traefik" = {
      hostname    = "pd1-lxc-traefik"
      target_node = "PVEProdesk1"
      vmid        = 152
      cores       = 2
      memory      = 2048
      ip          = "192.168.1.12/24"
      size = "6G"
    }

    "pd1-lxc-authentik" = {
      hostname = "pd1-lxc-traefik"
      target_node = "PVEProdesk1"
      vmid = 153
      cores = 2
      memory = 4096
      ip = "192.168.1.13/24"
      size = "16G"
    }
  }
}