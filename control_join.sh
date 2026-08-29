#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token fx1pel.6jzhf3dwg86t6tsv --discovery-token-ca-cert-hash sha256:ed85e06319fe59a5ac79a33a0a89a4d4eaedc2ce00f1a420065286b491a598ea  --control-plane --certificate-key 1b25e00add99456f5334b0272f5e274a2cb83e6dab418f59f4293d240f96a7b9
