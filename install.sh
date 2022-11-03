#!/bin/sh

# run on machine bash <(curl -s https://raw.githubusercontent.com/AnthonyEnr1quez/openSUSE-tumbleweed-playbook/main/install.sh)

sudo zypper dup
sudo zypper in git make

git clone https://github.com/AnthonyEnr1quez/openSUSE-tumbleweed-playbook.git ~/Projects/ansible/openSUSE-tumbleweed-playbook

cd ~/Projects/ansible/openSUSE-tumbleweed-playbook
make bootstrap_wsl
ansible-playbook -K main.yaml -v
