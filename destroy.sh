#!/bin/bash
alias ansd='ansible-doc'
alias anp='ansible-playbook'
cd TerraformVM
terraform state rm google_compute_global_address.lb_ip
./destroy.sh
