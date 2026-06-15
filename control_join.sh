#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token zk6sez.v61c9ig8i6a6dg0w --discovery-token-ca-cert-hash sha256:a8d9d31703c16cd318501c6ef83a12fe5b586dce2f05401011272d8b1bb51c96  --control-plane --certificate-key d2a32a50d5f3dcb6dba68c281ea1d586da464220be5044e439d763b2bf318d4e
