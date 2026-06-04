#!/bin/bash
#terraform output > output.txt
#rm -rf ../inventory
#echo "[control]" >> ../inventory
#awk -F'"' 'NR==3 { print $4 }' output.txt >> ../inventory
#awk -F'"' 'NR==6 { print $4 }' output.txt >> ../inventory
#awk -F'"' 'NR==9 { print $4 }' output.txt >> ../inventory
#echo "[workers]" >> ../inventory
#awk -F'"' 'NR==14 { print $2 }' output.txt >> ../inventory
#awk -F'"' 'NR==15 { print $2 }' output.txt >> ../inventory

terraform output > output.txt
rm -f ../inventory

CONTROL1=$(awk -F'"' 'NR==3 { print $4 }' output.txt)
CONTROL2=$(awk -F'"' 'NR==6 { print $4 }' output.txt)
CONTROL3=$(awk -F'"' 'NR==9 { print $4 }' output.txt)

WORKER1=$(terraform output -raw worker1_private_ip)
WORKER2=$(terraform output -raw worker2_private_ip)
TCPWorker=$(terraform output -raw load_balancer_ip)

cat > ../inventory <<EOF
[control]
control1 ansible_host=$CONTROL1
control2 ansible_host=$CONTROL2
control3 ansible_host=$CONTROL3

[workers]
worker1 ansible_host=$WORKER1
worker2 ansible_host=$WORKER2

[loadbalancer]
workerlb ansible_host=$TCPWorker

[all:vars]
ansible_user=manabpokhrel7
ansible_ssh_private_key_file=~/.ssh/id_rsa
ansible_ssh_common_args='-o StrictHostKeyChecking=no'

[workers:vars]
ansible_ssh_common_args='-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o ProxyCommand="ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -W %h:%p manabpokhrel7@$CONTROL1"'
EOF