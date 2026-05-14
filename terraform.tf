terraform {
  required_providers {

    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.2-rc07"
    }

    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }

  }
}

provider "proxmox" {
  pm_api_url          = var.pm_api_url
  pm_api_token_id     = var.pm_api_token_id
  pm_api_token_secret = var.pm_api_token_secret
  pm_tls_insecure     = var.pm_tls_insecure
}

resource "null_resource" "generate_inventory" {
  triggers = {
    vm_ips  = jsonencode({ for k, v in proxmox_vm_qemu.vms : k => v.default_ipv4_address })
    lxc_ips = jsonencode({ for k, v in proxmox_lxc.lxcs : k => v.network[0].ip })
  }

  provisioner "local-exec" {
    command = "${path.module}/generate_inventory.sh"
  }
}