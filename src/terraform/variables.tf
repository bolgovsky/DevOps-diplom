#VARIABLES FOR:

#YC
variable "cloud_id" {
  type    = string
  default = "b1g2d742rcmsdqcj615o" #bolgovsky cloud_id
}

variable "folder_id" {
  type    = string
  default = "b1g3jugliqbmg2eomqbj" #NETOLOGY FOLDER
}

#zones
variable "zone-a" {
  type    = string
  default = "ru-central1-a"
}

variable "zone-b" {
  type    = string
  default = "ru-central1-b"
}

#subnets 1 and 2
variable "subnet1" {
  type    = tuple([string])
  default = (["192.168.101.0/24"])
}

variable "subnet2" {
  type    = tuple([string])
  default = (["192.168.102.0/24"])
}


#spec settings for VM low costs
variable "core_fraction" {
  type    = number
  default = 20
}

variable "preemptible" {
  type    = bool
  default = true
}

variable "image_id_ubuntu2004" {
  type    = string
  default = "fd81hgrcv6lsnkremf32" #ubuntu2004
}

variable "dns_ttl" {
  type    = number
  default = 60
}

variable "reserve_ip" {
  default = "192.168.101.111"
}

#domain
variable "mydomain" {
  type    = string
  default = "bolgovsky.ru"
}