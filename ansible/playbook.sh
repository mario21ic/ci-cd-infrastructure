#!/bin/bash
set -xe

ansible-playbook -i hosts playbook.yml
