output "VPC_id" {
  value = yandex_vpc_network.netology.id
}

output "subnet_1_id" {
  value = yandex_vpc_subnet.subnet_1.id
}

output "subnet_2_id" {
  value = yandex_vpc_subnet.subnet_2.id
}

output "dns_a_count" {
  value = length(yandex_dns_zone.bolgovsky-zone)
}

output "internal_ip_address_nginx" {
  value = yandex_compute_instance.nginx.network_interface.0.ip_address
}

output "external_ip_address_nginx" {
  value = yandex_compute_instance.nginx.network_interface.0.nat_ip_address
}

output "internal_ip_address_db01" {
  value = yandex_compute_instance.db01.network_interface.0.ip_address
}

output "internal_ip_address_db02" {
  value = yandex_compute_instance.db02.network_interface.0.ip_address
}

output "internal_ip_address_app" {
  value = yandex_compute_instance.app.network_interface.0.ip_address
}

output "internal_ip_address_gitlab" {
  value = yandex_compute_instance.gitlab.network_interface.0.ip_address
}

output "internal_ip_address_runner" {
  value = yandex_compute_instance.runner.network_interface.0.ip_address
}

output "internal_ip_address_monitoring" {
  value = yandex_compute_instance.monitoring.network_interface.0.ip_address
}
