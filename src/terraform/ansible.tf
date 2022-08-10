resource "null_resource" "wait" {
  provisioner "local-exec" {
    command = "sleep 120"
  }

  depends_on = [
    local_file.inventory
  ]
}

#nginx
resource "null_resource" "playbook" {
  provisioner "local-exec" {
    command = "ANSIBLE_FORCE_COLOR=1 ansible-playbook -i ../ansible/inventory ../ansible/site.yml"
  }
  depends_on = [
    null_resource.wait
  ]
}
#
##MYSQL
#resource "null_resource" "playbook-mysql" {
#  provisioner "local-exec" {
#    command = "ANSIBLE_FORCE_COLOR=1 ansible-playbook -i ../ansible/inventory ../ansible/site.yml --tags mysql"
#  }
#  depends_on = [
#    null_resource.wait
#  ]
#}
#
##WORDPRESS
#resource "null_resource" "playbook-app" {
#  provisioner "local-exec" {
#    command = "ANSIBLE_FORCE_COLOR=1 ansible-playbook -i ../ansible/inventory ../ansible/site.yml --tags app"
#  }
#  depends_on = [
#    null_resource.wait
#  ]
#}
#
##gitlab
#resource "null_resource" "playbook-gitlab" {
#  provisioner "local-exec" {
#    command = "ANSIBLE_FORCE_COLOR=1 ansible-playbook -i ../ansible/inventory ../ansible/site.yml --tags gitlab"
#  }
#  depends_on = [
#    null_resource.wait
#  ]
#}
#
##runner
#resource "null_resource" "playbook-runner" {
#  provisioner "local-exec" {
#    command = "ANSIBLE_FORCE_COLOR=1 ansible-playbook -i ../ansible/inventory ../ansible/site.yml --runner"
#  }
#  depends_on = [
#    null_resource.wait
#  ]
#}
#
##monitoring
#resource "null_resource" "playbook-monitoring" {
#  provisioner "local-exec" {
#    command = "ANSIBLE_FORCE_COLOR=1 ansible-playbook -i ../ansible/inventory ../ansible/site.yml --tags monitoring"
#  }
#  depends_on = [
#    null_resource.wait
#  ]
#}
#
##node_exporter
#resource "null_resource" "playbook-all" {
#  provisioner "local-exec" {
#    command = "ANSIBLE_FORCE_COLOR=1 ansible-playbook -i ../ansible/inventory ../ansible/site.yml --tags node_exporter"
#  }
#  depends_on = [
#    null_resource.wait
#  ]
#}