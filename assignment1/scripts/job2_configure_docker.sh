#!/bin/bash
# Push Ansible configuration to install Docker
ansible-playbook -i inventory/hosts ansible/docker_install.yml

