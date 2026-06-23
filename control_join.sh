#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token r1fh1q.au4lyc9w2urnk5y9 --discovery-token-ca-cert-hash sha256:ff91edd750fe44e0f56249b95095be77866d2ed6911447c5a735da354db0f61d  --control-plane --certificate-key 27ec88838e78e374c7c5b6da3ad56f55efa2a4844b3ef43b12bbe11ac8831f0d
