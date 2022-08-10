resource "yandex_compute_instance" "gitlab" {
  name                      = "gitlab"
  zone                      = var.zone-a #"ru-central1-a"
  hostname                  = "gitlab.bolgovsky.ru"
  allow_stopping_for_update = true

  resources {
    core_fraction = var.core_fraction
    cores         = 4
    memory        = 8
  }
  scheduling_policy {
    preemptible = false #var.preemptible #true
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id_ubuntu2004
      size     = "20"
    }
  }

  network_interface {
    subnet_id  = yandex_vpc_subnet.subnet_1.id
    nat        = false
   # ip_address = "192.168.101.105"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
    #ssh-keys = "ubuntu:${file("C:/Users/Денис/.ssh/id_rsa.pub")}"
  }

  depends_on = [
    #yandex_compute_instance.nginx,
    yandex_vpc_subnet.subnet_1
  ]
}
