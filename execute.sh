#!/bin/bash
alias ansd='ansible-doc'
alias anp='ansible-playbook'
cd TerraformVM
terraform import -var-file=variables.tfvars google_compute_global_address.lb_ip $(gcloud config get-value project)/kubernetes-lb-ip
./apply.sh
cd ../
ansible-playbook cilium-config.yml
ansible-playbook application.yml 
ansible-playbook hubble-cli.yml
ansible-playbook prometheus-stack.yml
ansible-playbook elastic-cloud.yml
