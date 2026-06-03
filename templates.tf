resource "local_file" "cloud_init_user_data_file" {
  for_each = local.vms

  content = templatefile("${path.module}/cloud-inits/cloud-init.cloud_config.tftpl", {
    ssh_key_j   = var.ssh_public_key_j
    ansible_key = var.ssh_public_key_ansible
    hostname    = each.key
  })
  filename = "${path.module}/files/user_data_${each.key}.cfg"
}

resource "local_file" "cloud_init_network_file" {
  for_each = local.vms

  content = templatefile("${path.module}/cloud-inits/network.tftpl", {
    ip = each.value.ip
  })
  filename = "${path.module}/files/network_${each.key}.cfg"
}

resource "null_resource" "cloud_init_config_files" {
  for_each = local.vms

  triggers = {
    user_hash    = local_file.cloud_init_user_data_file[each.key].content
    network_hash = local_file.cloud_init_network_file[each.key].content
  }

  connection {
    type     = "ssh"
    user     = var.pve_user
    password = var.pve_password
    host     = var.pve_host
  }

  provisioner "file" {
    source      = local_file.cloud_init_user_data_file[each.key].filename
    destination = "/var/lib/vz/snippets/user_data_${each.key}.yml"
  }

  provisioner "file" {
    source      = local_file.cloud_init_network_file[each.key].filename
    destination = "/var/lib/vz/snippets/network_${each.key}.yml"
  }
}