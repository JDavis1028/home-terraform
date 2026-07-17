locals {
  lxc = {
    "pd1-lxc-homepage" = {
      hostname    = "pd1-lxc-homepage"
      target_node = "PVEProdesk1"
      vmid        = 151
      cores       = 2
      memory      = 2048
      ip          = "192.168.20.11/24"
      gateway     = "192.168.20.1"
      vlan = 20
      size        = "20G"
    }

    "pd1-lxc-traefik" = {
      hostname    = "pd1-lxc-traefik"
      target_node = "PVEProdesk1"
      vmid        = 152
      cores       = 2
      memory      = 2048
      ip          = "192.168.20.12/24"
      gateway     = "192.168.20.1"
      vlan = 20
      size        = "6G"
    }

    "pd3-lxc-authentik" = {
      hostname    = "pd1-lxc-authentik"
      target_node = "PVEProdesk3"
      vmid        = 351
      cores       = 2
      memory      = 4096
      ip          = "192.168.20.13/24"
      gateway     = "192.168.20.1"
      vlan = 20
      size        = "16G"
    }

    "pd2-lxc-gitlab" = {
      hostname    = "pd2-lxc-gitlab"
      target_node = "PVEProdesk2"
      vmid        = 251
      cores       = 4
      memory      = 8224
      ip          = "192.168.20.14/24"
      gateway     = "192.168.20.1"
      vlan = 20
      size        = "16G"
    }

    "pd2-lxc-codeserver" = {
      hostname    = "pd2-lxc-codeserver"
      target_node = "PVEProdesk2"
      vmid        = 252
      cores       = 2
      memory      = 3072
      ip          = "192.168.25.11/24"
      gateway     = "192.168.25.1"
      vlan = 25
      size        = "16G"
    }
  }
}