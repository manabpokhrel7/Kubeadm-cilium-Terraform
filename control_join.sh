#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token iw2bpz.yk7zayrxqrpc4qm9 --discovery-token-ca-cert-hash sha256:9324cdff9c5f36c8e239189a27a8f44fe5007b7929e867a09d3396381dcc756a  --control-plane --certificate-key 42b62fe49e79a23854191c61905c4f9007a1ed0178e0275449156a39c16ca30d
