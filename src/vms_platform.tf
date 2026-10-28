# web-vars 

variable "vm_web_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "web vm image"
}


variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "web vm name"
}

variable "vm_web-zone" {
  type = string
  default = "ru-central1-d"
}

variable "vm_web_platform" {
  type = string
  default = "standard-v4a"
}

# variable "vm_web_cores" {
#   type = number
#   default = 20    
# }

# variable "vm_web_ram" {
#   type = number
#   default = 4   
# }

# variable "vm_web_fraction" {
#   type = number
#   default = 20
# }

variable "vm_web_preemptible" {
  type = bool
  default = true
}

variable "vm_web_nat" {
  type = bool
  default = true
}

# db-vars

variable "vm_db_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "web vm image"
}


variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "db vm name"
}

variable "vm_db_zone" {
  type = string
  default = "ru-central1-d"
}

variable "vm_db_platform" {
  type = string
  default = "standard-v4a"
}

# variable "vm_db_cores" {
#   type = number
#   default = 20    
# }

# variable "vm_db_ram" {
#   type = number
#   default = 4   
# }

# variable "vm_db_fraction" {
#   type = number
#   default = 20
# }

variable "vm_db_preemptible" {
  type = bool
  default = true
}

variable "vm_db_nat" {
  type = bool
  default = true
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