#!/bin/bash -xe

yum install -y yum-utils
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo

yum install -y nomad consul

#plugin "docker" {
#  config {
#    allow_caps = [ "ALL" ],
#
#    volumes {
#      enabled = true
#    }
#  }
#}
#
#consul {
#  tags = [
#    "traefik.enable=true"
#  ]
#}
#


sed -i 's/^#client_addr = \"0.0.0.0\"/client_addr = \"0.0.0.0\"/g' /etc/consul.d/consul.hcl
sed -i 's/^#server = true/server = true/g' /etc/consul.d/consul.hcl
sed -i 's/^#bootstrap_expect=3/bootstrap_expect=1/g' /etc/consul.d/consul.hcl
echo 'bind_addr = "{{ GetInterfaceIP \"eth0\" }}"' >> /etc/consul.d/consul.hcl

consul --version
nomad --version

#systemctl start consul
#systemctl start nomad
