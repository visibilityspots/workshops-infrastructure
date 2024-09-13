#!/bin/bash -xe

dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

dnf install -y docker-ce docker-ce-cli containerd.io

systemctl start docker
systemctl enable docker

docker run --rm hello-world

git clone https://github.com/docker/getting-started.git
