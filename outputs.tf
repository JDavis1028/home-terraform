output "vms" {
    value = {
        for key, vm in proxmox_vm_qemu.vms : key => vm.default_ipv4_address
    }
}

output "lxc" {
    value = {
        for key, lxc in proxmox_lxc.lxcs : key => split("/", lxc.network[0].ip)[0]
    }   
}