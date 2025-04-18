#!/bin/bash

sudo apt update
sudo apt install -y \
  ansible \
  python-is-python3

python3 -m pip install --user pipx
pipx install --include-deps ansible
pipx install ansible-core~=2.17
sudo python -m pip --break-system-packages install packaging
ansible-galaxy install -r requirements.yml --force
ansible-playbook --ask-become-pass --ask-vault-pass -e @secrets.enc main.yml
