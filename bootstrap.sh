#!/bin/bash

sudo apt update
sudo apt install -y \
  ansible \
  pipx

pipx upgrade ansible
pipx upgrade ansible-core
sudo python -m pip install packaging
ansible-galaxy install -r requirements.yml
ansible-playbook local.yml
