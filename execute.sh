#!/bin/bash
alias ansd='ansible-doc'
alias anp='ansible-playbook'
cd TerraformVM
./apply.sh
cd ../
ansible-playbook application.yml && ansible-playbook cilium-config.yml
