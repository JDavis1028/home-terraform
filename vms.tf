resource "proxmox_vm_qemu" "vms" {
    for_each = local.vms

    name = each.key
    target_node = each.value.target_node
    vmid = each.value.vmid
    memory = each.value.memory
    ipconfig0 = "ip=dhcp"


    os_type = "cloud-init"
    agent = 1
    agent_timeout = 180
    automatic_reboot = true
    clone = "Ubuntu-Cloud-26.04"
    full_clone = true
    # ciuser = "j"
    # sshkeys = trimspace(file("~/.ssh/id_ed25519.pub"))
    boot = "order=scsi0"
    cicustom = "user=local:snippets/disk_setup.yaml"

    cpu {
        type = "x86-64-v2-AES"
        sockets = 1
        cores = each.value.cores
    }

    disk {
        slot = "scsi0"
        type = "disk"
        storage = "local-lvm"
        size = "6G"
    }

    disk {
        slot = "scsi1"
        type = "disk"        
        storage = "local-lvm"
        size = "32G"
    }

    disk {
        slot = "ide2"
        type = "cloudinit"
        storage = "local-lvm"
    }

    network {
        id = 0
        model = "virtio"
        bridge = "vmbr0"
        firewall = false
        link_down = false
    }
}

