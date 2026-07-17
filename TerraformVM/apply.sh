#!/bin/bash
terraform import -var-file=variables.tfvars google_compute_address.tcp_lb_ip projects/project-d64d7939-1f1b-470f-901/regions/us-west1/addresses/control-tcp-ip
terraform import -var-file=variables.tfvars google_compute_address.lb_ip projects/project-d64d7939-1f1b-470f-901/regions/us-west1/addresses/kubernetes-lb-ip
terraform apply --auto-approve -var-file=variables.tfvars -backup=/tmp/tf.backup
rm -rf output.txt
terraform output > output.txt
./output.sh
rm -rf output.txt
###Apply ansible configuration
#sleep 10
#cd ../
#./ansible.sh
