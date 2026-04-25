#!/bin/bash
terraform apply --auto-approve -var-file=variables.tfvars
rm -rf output.txt
terraform output > output.txt
./output.sh
rm -rf output.txt
###Apply ansible configuration
sleep 10
cd ../
./ansible.sh
