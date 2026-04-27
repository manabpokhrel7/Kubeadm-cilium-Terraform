#!/bin/bash
alias ansd='ansible-doc'
alias anp='ansible-playbook'
cd TerraformVM
./apply.sh
###Apply the manifest files
anp application.yml
