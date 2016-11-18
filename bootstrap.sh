#!/usr/bin/env bash

# install ansible
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install -y software-properties-common ansible
