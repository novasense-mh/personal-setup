#!/bin/bash

sudo apt update
sudo apt install -y \
  ansible

ansible-pull -U git@github.com:novasense-mh/personal-setup.git
