#!/bin/bash
sleep 100
ansible-playbook automation-setup.yml && ansible-playbook control.yml && ansible-playbook worker.yml
