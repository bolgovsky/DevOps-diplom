resource "yandex_compute_instance" "nginx" {
  name                      = "nginx"
  zone                      = "ru-central1-a"
  hostname                  = "nginx.bolgovsky.ru"
  allow_stopping_for_update = true

  resources {
    core_fraction = var.core_fraction
    cores         = 2
    memory        = 2
  }
  scheduling_policy {
    preemptible = var.preemptible
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id_ubuntu2004
      size     = "5"
    }
  }

  network_interface {
    subnet_id  = yandex_vpc_subnet.subnet_1.id
    nat        = true
    ip_address = var.reserve_ip
    #ip_address = "192.168.101.101"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
    #ssh-keys = "ubuntu:${file("C:/Users/Денис/.ssh/id_rsa.pub")}"
  }

  depends_on = [
    yandex_vpc_subnet.subnet_1
  ]
}
