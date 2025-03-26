#!/bin/bash

sudo apt update
sudo apt install -y \
  ansible \
  pipx \
  python-is-python3

pipx --break-system-packages upgrade ansible
pipx --break-system-packages upgrade ansible-core
sudo python -m pip --break-system-packages install packaging
ansible-galaxy install -r requirements.yml
ansible-playbook local.yml
