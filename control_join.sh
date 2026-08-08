#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token v4tkn7.m3ryc1jszdy00uqx --discovery-token-ca-cert-hash sha256:1a8b80464fed87f63e4a1dc8c944538c7dbf212b0b31b27961b4ba2a619a0e73  --control-plane --certificate-key 054d872f8b300f425f003c1dbdbe71972b392e963cc2a490a3b720370badedeb
