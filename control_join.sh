#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token 5do2ph.u55qdqs5r0p5uqdt --discovery-token-ca-cert-hash sha256:7ba100110a67b0aa94afae36471d879d557690778c1366574c34e2bf9d817558  --control-plane --certificate-key facc787eda70ab64c3c2c3cd4f9b451c567c5147d3dc8b70495b6bb43f6f8a02
