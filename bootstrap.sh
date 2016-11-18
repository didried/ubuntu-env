#!/usr/bin/env bash

# install ansible
echo installing ansible
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install -y software-properties-common ansible

# install required roles
echo
echo installing required ansible roles
ansible-galaxy install -r requirements.yml -p roles/

# install everything else
echo
echo installing everything
ansible-playbook ubuntu-env.yml -i localhost, -c local -K -v

