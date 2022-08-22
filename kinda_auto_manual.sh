#!/bin/sh

sudo zypper dup
sudo zypper in git make

git clone https://github.com/AnthonyEnr1quez/temp_wsl_tumbleweed_ansible.git ~/projects/ansible/temp_wsl_tumbleweed_ansible

cd ~/projects/ansible/temp_wsl_tumbleweed_ansible
make bootstrap_wsl
ansible-playbook -K main.yaml -v
