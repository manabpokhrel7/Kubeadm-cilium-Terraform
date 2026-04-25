#!/bin/bash
terraform destroy --auto-approve -var-file=variables.tfvars
rm -rf ../inventory

