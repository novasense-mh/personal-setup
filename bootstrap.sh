#!/bin/bash

sudo apt update
sudo apt install -y \
  ansible \
  pipx

pipx upgrade ansible
ansible-galaxy install -r requirements.yml
ansible-playbook local.yml
