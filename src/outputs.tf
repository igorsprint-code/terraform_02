output "vm_web" {
  description = "web vm info"
  value = {
    name = yandex_compute_instance.platform.name
    ip_address =  yandex_compute_instance.platform.network_interface[0].nat_ip_address
    fqdn = yandex_compute_instance.platform.fqdn
  }
}


output "vm_db" {
  description = "db vm info"
  value = {
    name = yandex_compute_instance.db.name
    ip_address =  yandex_compute_instance.db.network_interface[0].nat_ip_address
    fqdn = yandex_compute_instance.db.fqdn
  }
}
