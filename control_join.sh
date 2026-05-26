#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token 5llq3b.wh8hrk6kuss5ndmq --discovery-token-ca-cert-hash sha256:d84bf9042590e89f7cb8afd41a424b30d6bf0dfb6ab7b6d01c9354cb8bb5e97f  --control-plane --certificate-key e8bb9ea6ca1b07788d8e1263757e208d02c3052b65ee7b23ed2dbd1404572a89
