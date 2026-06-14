resource "proxmox_lxc" "lxcs" {
  for_each = local.lxc

  hostname        = each.key
  target_node     = each.value.target_node
  unprivileged    = true
  ostemplate      = "local:vztmpl/ubuntu-25.04-standard_25.04-1.1_amd64.tar.zst"
  password        = var.root_password
  ssh_public_keys = trimspace(file("~/.ssh/id_ed25519.pub"))
  vmid            = each.value.vmid

  cores  = each.value.cores
  memory = each.value.memory
  swap   = 512
  start  = true

  features {
    nesting = true
  }

  rootfs {
    storage = "local-lvm"
    size    = each.value.size
  }

  network {
    name     = "eth0"
    bridge   = "vmbr0"
    ip       = each.value.ip
    gw       = var.gateway
    firewall = false
  }
}