#!/bin/bash
terraform state rm google_compute_address.tcp_lb_ip
terraform state rm google_compute_address.lb_ip
terraform destroy --auto-approve -var-file=variables.tfvars -backup=/tmp/tf.backup
rm -rf ../inventory

