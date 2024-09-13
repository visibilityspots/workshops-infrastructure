#!/bin/bash -xe

modprobe ip_tables
echo 'ip_tables' | sudo tee -a /etc/modules

wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
