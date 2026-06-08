#!/bin/bash
alias ansd='ansible-doc'
alias anp='ansible-playbook'
cd TerraformVM
./apply.sh
sleep 30
cd ..
./ansible.sh
