#!/bin/bash
yum update -y
yum install python3 -y
alternatives --set python /usr/bin/python3
yum -y install python3-pip
pip3 install ansible
