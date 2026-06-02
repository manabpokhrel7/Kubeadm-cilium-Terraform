#!/bin/bash
ansible-playbook WIFDelete.yml
alias ansd='ansible-doc'
alias anp='ansible-playbook'
cd TerraformVM
./destroy.sh
rm -rf config inventory control_join.sh join.sh cluster-jwks.json
