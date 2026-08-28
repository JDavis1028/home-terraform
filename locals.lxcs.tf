locals {
  lxc = {

    # --- Prodesk1 --- 

    "pd1-lxc-homepage" = {
      hostname    = "pd1-lxc-homepage"
      target_node = "PVEProdesk1"
      vmid        = 151
      cores       = 2
      memory      = 2048
      ip          = "192.168.20.11/24"
      gateway     = "192.168.20.1"
      vlan        = 20
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
      vlan        = 20
      size        = "6G"
    }

    "pd1-lxc-database" = {
      hostname    = "pd1-lxc-database"
      target_node = "PVEProdesk1"
      vmid        = 150
      cores       = 2
      memory      = 8192
      ip          = "192.168.25.21/24"
      gateway     = "192.168.25.1"
      vlan        = 25
      size        = "64G"
    }

    # --- Prodesk2 ---

    "pd2-lxc-gitlab" = {
      hostname    = "pd2-lxc-gitlab"
      target_node = "PVEProdesk2"
      vmid        = 251
      cores       = 4
      memory      = 8192
      ip          = "192.168.20.14/24"
      gateway     = "192.168.20.1"
      vlan        = 20
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
      vlan        = 25
      size        = "16G"
    }

    "pd2-lxc-database" = {
      hostname    = "pd2-lxc-database"
      target_node = "PVEProdesk2"
      vmid        = 250
      cores       = 2
      memory      = 8192
      ip          = "192.168.25.22/24"
      gateway     = "192.168.25.1"
      vlan        = 25
      size        = "64G"
    }

    # --- Prodesk3 ---

    "pd3-lxc-authentik" = {
      hostname    = "pd1-lxc-authentik"
      target_node = "PVEProdesk3"
      vmid        = 351
      cores       = 2
      memory      = 4096
      ip          = "192.168.20.13/24"
      gateway     = "192.168.20.1"
      vlan        = 20
      size        = "16G"
    }

    "pd3-lxc-headscale" = {
      hostname    = "pd3-lxc-headscale"
      target_node = "PVEProdesk3"
      vmid        = 352
      cores       = 2
      memory      = 2048
      ip          = "192.168.30.11/24"
      gateway     = "192.168.30.1"
      vlan        = 30
      size        = "16G"
    }

    "pd3-lxc-database" = {
      hostname    = "pd3-lxc-database"
      target_node = "PVEProdesk3"
      vmid        = 350
      cores       = 2
      memory      = 8192
      ip          = "192.168.25.23/24"
      gateway     = "192.168.25.1"
      vlan        = 25
      size        = "64G"
    }
  }
}
