locals {
    lxc = {
        "pd1-lxc-homepage" = {
            hostname = "pd1-lxc-homepage"
            target_node = "PVEProdesk1"
            vmid = 151
            cores = 2
            memory = 2048
            ip = "192.168.1.11/24"
        }
    }
}