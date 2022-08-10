#NETWORK SETTINGS -  CREATE VPC, ROUTE
resource "yandex_vpc_network" "netology" {
  name = "netology"
}

resource "yandex_vpc_route_table" "route-to-reserve-ip" {
  network_id = yandex_vpc_network.netology.id
  name       = "route-to-reserve-ip"
  static_route {
    destination_prefix = "0.0.0.0/0"
    next_hop_address   = var.reserve_ip
  }
}

resource "yandex_vpc_subnet" "subnet_1" {
  name           = "subnet_1"
  zone           = var.zone-a #"ru-central1-a"
  network_id     = yandex_vpc_network.netology.id
  v4_cidr_blocks = var.subnet1 #["192.168.101.0/24"]
  route_table_id = yandex_vpc_route_table.route-to-reserve-ip.id
  depends_on = [
    yandex_vpc_network.netology
  ]
}
resource "yandex_vpc_subnet" "subnet_2" {
  name           = "subnet_2"
  zone           = var.zone-b #"ru-central1-b"
  network_id     = yandex_vpc_network.netology.id
  v4_cidr_blocks = var.subnet2 #["192.168.102.0/24"]
  route_table_id = yandex_vpc_route_table.route-to-reserve-ip.id
  depends_on = [
    yandex_vpc_network.netology
  ]
}