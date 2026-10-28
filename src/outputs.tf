output "vms" {
  description = "vm_info"
  value = {
    vm_web = {
      name = yandex_compute_instance.platform.name
      ip_address =  yandex_compute_instance.platform.network_interface[0].nat_ip_address
      fqdn = yandex_compute_instance.platform.fqdn
    }
    
    vm_db ={
      name = yandex_compute_instance.db.name
      ip_address =  yandex_compute_instance.db.network_interface[0].nat_ip_address
      fqdn = yandex_compute_instance.db.fqdn
    }

  }
}

