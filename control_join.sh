#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token fb9uxu.g2n132rzezigdk6z --discovery-token-ca-cert-hash sha256:84c90f1f15c6093a6f6174a0700da7ed26f3b74b5793838b2aa5c22a3e9ade87  --control-plane --certificate-key ed681098e1ce72b0d8a1ec4bb9a14e9abdb16e0340a00a615c965d20f9d68f95
