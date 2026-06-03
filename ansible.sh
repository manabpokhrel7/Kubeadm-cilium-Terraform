#!/bin/bash
ansible-playbook -v automation-setup.yml
ansible-playbook control.yml
ansible-playbook worker.yml
ansible-playbook localhost.yml
ansible-playbook crds.yml
#ansible-playbook WIF.yml