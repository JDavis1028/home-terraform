variable "root_password" {
  description = "password for lxc"
  type        = string
  sensitive   = true
}

variable "gateway" {
  description = "default gateway"
  type        = string
  sensitive   = false
}

variable "pm_api_url" {
  description = "Proxmox api url"
  type        = string
  sensitive   = true
}

variable "pm_api_token_id" {
  description = "Proxmox api token"
  type        = string
  sensitive   = true
}

variable "pm_api_token_secret" {
  description = "Proxmox token secret"
  type        = string
  sensitive   = true
}

variable "pm_tls_insecure" {
  description = "Proxmox tls"
  type        = bool
  sensitive   = true
}

variable "ssh_public_key_j" {
  description = "SSH public key for user j"
  type        = string
}

variable "ssh_public_key_ansible" {
  description = "SSH public key for ansible user"
  type        = string
}

variable "pve_user" {
  type        = string
  description = "Proxmox User"
}

variable "pve_password" {
  type        = string
  description = "Proxmox Password"
  sensitive   = true
}

variable "pve_host" {
  type        = string
  description = "Proxmox Address"
  sensitive   = true
}