resource "local_file" "inventory" {
  content         = <<-DOC

---
all:
  children:
    nginxSrv:
      hosts:
        nginx:
          ansible_host: ${yandex_compute_instance.nginx.network_interface[0].nat_ip_address}
          ansible_connection: ssh
          ansible_user: ubuntu
          ansible_ssh_extra_args: "-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
    mysqlSrv:
      hosts:
        db01:
          ansible_connection: ssh
          ansible_user: ubuntu
          ansible_ssh_extra_args: "-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -J ubuntu@${yandex_compute_instance.nginx.network_interface[0].nat_ip_address}"
          mysql_replication_role: 'master'
        db02:
          ansible_connection: ssh
          ansible_user: ubuntu
          ansible_ssh_extra_args: "-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -J ubuntu@${yandex_compute_instance.nginx.network_interface[0].nat_ip_address}"
          mysql_replication_role: 'slave'
    wordpressSrv:
      hosts:
        app:
          ansible_connection: ssh
          ansible_user: ubuntu
          ansible_ssh_extra_args: "-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -J ubuntu@${yandex_compute_instance.nginx.network_interface[0].nat_ip_address}"
    gitlabSrv:
      hosts:
        gitlab:
          ansible_connection: ssh
          ansible_user: ubuntu
          ansible_ssh_extra_args: "-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -J ubuntu@${yandex_compute_instance.nginx.network_interface[0].nat_ip_address}"
    runnerSrv:
      hosts:
        runner:
          ansible_connection: ssh
          ansible_user: ubuntu
          ansible_ssh_extra_args: "-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -J ubuntu@${yandex_compute_instance.nginx.network_interface[0].nat_ip_address}"
    monitoringSrv:
      hosts:
        monitoring:
          ansible_connection: ssh
          ansible_user: ubuntu
          ansible_ssh_extra_args: "-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -J ubuntu@${yandex_compute_instance.nginx.network_interface[0].nat_ip_address}"

  DOC
  filename        = "../ansible/inventory"
  file_permission = "0644"

  depends_on = [
    yandex_compute_instance.nginx,
    yandex_compute_instance.db01,
    yandex_compute_instance.db02,
    yandex_compute_instance.app
    #    yandex_compute_instance.gitlab,
    #    yandex_compute_instance.runner,
    #    yandex_compute_instance.monitoring
  ]
}
