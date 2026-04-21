#!/bin/bash
ansible-playbook automation-setup.yml && ansible-playbook control.yml && ansible-playbook worker.yml
