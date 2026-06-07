#!/bin/bash
ansible-playbook -v automation-setup.yml
ansible-playbook control.yml
ansible-playbook worker.yml
ansible-playbook localhost.yml
ansible-playbook crds.yml
ansible-playbook WIF.yml
#Triggering Gitlab cicd
git add .
git commit -m "ansible bot cicd trigger"
git push origin main