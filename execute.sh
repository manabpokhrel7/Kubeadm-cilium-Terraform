#!/bin/bash
alias ansd='ansible-doc'
alias anp='ansible-playbook'
cd TerraformVM
terraform import -var-file=variables.tfvars google_compute_global_address.lb_ip $(gcloud config get-value project)/kubernetes-lb-ip
terraform import -var-file=variables.tfvars google_compute_address.control_ip projects/my-personal-terraform/regions/us-central1/addresses/control-plane-ip
./apply.sh
cd ../
ansible-playbook cilium-config.yml
ansible-playbook hubble-cli.yml
ansible-playbook prometheus-stack.yml
ansible-playbook application.yml 
ansible-playbook elk-stack.yml
