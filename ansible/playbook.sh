#!/bin/bash
set -xe

#ansible-playbook -i hosts playbook.yml --diff --check
ansible-playbook -i hosts playbook.yml
