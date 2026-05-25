#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token qtx3h0.ox7u15mtjoxpvq0j --discovery-token-ca-cert-hash sha256:19bb83d9570ed8e4b8d78409de97dc83d62617e599b9e5f691bdb8f96843fc51  --control-plane --certificate-key 1c9f844855247d0538afb870e6bf55b51ca1e6417c8d45214faaaf0d8fd1812e
