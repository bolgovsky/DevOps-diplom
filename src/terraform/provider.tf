terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"

  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    bucket   = "netology-diplom-backet"
    region   = "ru-central1"
    key      = "terraform.tfstate" #from windows
    #    key        = "./terraform.tfstate" #from linux
    access_key = "YC************""
    secret_key = "YC************"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  #  token     = "<OAuth>"
  service_account_key_file = "key.json"    #add to .gitignore
  cloud_id                 = var.cloud_id  #"b1g2d742rcmsdqcj615o"
  folder_id                = var.folder_id #"b1g3jugliqbmg2eomqbj"
  zone                     = var.zone-a    #"ru-central1-a"
}





