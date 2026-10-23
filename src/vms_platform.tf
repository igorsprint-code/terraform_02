variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "web vm name"
}

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "db vm name"
}



###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMaMfRP37QFfTzysjQiIPsYlU78MBbr53uyxa0S5y1Cf igor@igor-VirtualBox"
  description = "ssh-keygen -t ed25519"
}


variable "vms_resources" {
  type = map(object({
    cores = number
    memory = number
    core_fraction = number
  }))
  default = {
    web = {
      cores = 2
      memory = 1
      core_fraction = 20
    },
    db = {
      cores = 2
      memory = 2
      core_fraction = 20
    }
  }
}

variable "metadata" {
  type = map(string)
  default = {
    serial-port-enable = 1
  }
}