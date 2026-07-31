#!/bin/bash
ansible-playbook automation-setup.yml
ansible-playbook control.yml
ansible-playbook worker.yml
ansible-playbook localhost.yml
ansible-playbook crds.yml
ansible-playbook WIF.yml
#Triggering Gitlab cicd
cd bash
./gitpush.sh