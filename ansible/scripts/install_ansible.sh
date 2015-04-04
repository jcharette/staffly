#!/bin/bash

sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
apt-get -y install ansible
rm -f /etc/ansible/hosts
echo "locahost ansible_connection=local" >> /etc/ansible/hosts
