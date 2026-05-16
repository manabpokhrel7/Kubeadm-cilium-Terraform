#!/bin/bash
alias ansd='ansible-doc'
alias anp='ansible-playbook'
cd TerraformVM
./destroy.sh
rm -rf config inventory
