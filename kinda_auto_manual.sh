#!/bin/sh

sudo zypper dup
sudo zypper in git make

mkdir -p ~/projects/ansible

git clone -C ~/projects/ansible https://github.com/AnthonyEnr1quez/temp_wsl_tumbleweed_ansible.git

cd ~/projects/ansible
make bootstrap_wsl
ansible-playbook -K main.yaml -v
