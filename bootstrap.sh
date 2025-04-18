#!/bin/bash

sudo apt update
sudo apt install -y \
  ansible \
  python-is-python3

PATH=$PATH:~/.local/bin/
python3 -m pip install --user pipx
python3 -m pipx install --include-deps ansible
python3 -m pipx install ansible-core~=2.17
sudo python3 -m pip --break-system-packages install packaging
ansible-galaxy install -r requirements.yml --force
ansible-playbook --ask-become-pass --ask-vault-pass -e @secrets.enc main.yml
