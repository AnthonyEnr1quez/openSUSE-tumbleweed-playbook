bootstrap_wsl:
	sudo zypper install ansible
	make ansible_requirements

.PHONY: ansible_requirements
ansible_requirements:
	ansible-galaxy install -r requirements.yaml