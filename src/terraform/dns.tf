# Create public dns zone
resource "yandex_dns_zone" "bolgovsky-zone" {
  name   = "bolgovsky-public-zone"
  zone   = "${var.mydomain}."
  public = true
}
# Основная A запись
resource "yandex_dns_recordset" "dns_record_1" {
  zone_id    = yandex_dns_zone.bolgovsky-zone.id
  name       = "${var.mydomain}."
  type       = "A"
  ttl        = 600
  data       = [yandex_compute_instance.nginx.network_interface[0].nat_ip_address]
  depends_on = [yandex_compute_instance.nginx]
}

# A записи для доменов 3го уровня
resource "yandex_dns_recordset" "dns_record_2" {
  zone_id    = yandex_dns_zone.bolgovsky-zone.id
  name       = "www"
  type       = "A"
  ttl        = 600
  data       = [yandex_compute_instance.nginx.network_interface[0].nat_ip_address]
  depends_on = [yandex_compute_instance.nginx]
}

resource "yandex_dns_recordset" "dns_record_3" {
  zone_id    = yandex_dns_zone.bolgovsky-zone.id
  name       = "gitlab"
  type       = "A"
  ttl        = 600
  data       = [yandex_compute_instance.nginx.network_interface[0].nat_ip_address]
  depends_on = [yandex_compute_instance.nginx]
}

resource "yandex_dns_recordset" "dns_record_4" {
  zone_id    = yandex_dns_zone.bolgovsky-zone.id
  name       = "grafana"
  type       = "A"
  ttl        = 600
  data       = [yandex_compute_instance.nginx.network_interface[0].nat_ip_address]
  depends_on = [yandex_compute_instance.nginx]
}

resource "yandex_dns_recordset" "dns_record_5" {
  zone_id    = yandex_dns_zone.bolgovsky-zone.id
  name       = "prometheus"
  type       = "A"
  ttl        = 600
  data       = [yandex_compute_instance.nginx.network_interface[0].nat_ip_address]
  depends_on = [yandex_compute_instance.nginx]
}

resource "yandex_dns_recordset" "dns_record_6" {
  zone_id    = yandex_dns_zone.bolgovsky-zone.id
  name       = "alertmanager"
  type       = "A"
  ttl        = 600
  data       = [yandex_compute_instance.nginx.network_interface[0].nat_ip_address]
  depends_on = [yandex_compute_instance.nginx]
}