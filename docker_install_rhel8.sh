#!/bin/bash
#https://www.linuxtechi.com/install-docker-ce-centos-8-rhel-8/
yum update -y
dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
dnf repolist -v
dnf install docker-ce-3:18.09.1-3.el7
dnf install --nobest docker-ce
dnf install https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.2.6-3.3.el7.x86_64.rpm
dnf install docker-ce
systemctl disable firewalld
systemctl enable --now docker
curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o docker-compose
mv docker-compose /usr/local/bin && sudo chmod +x /usr/local/bin/docker-compose
dnf install python3-pip
pip3.6 install docker-compose
docker run --rm --name=linuxconfig-test -p 80:80 httpd
