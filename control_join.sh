#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token tud8sw.r0sbibfnpughgogq --discovery-token-ca-cert-hash sha256:d7009ad447f9b72d9b2b74b33c761e74f1902fd8d69d36cba47987c8f04fa6cd  --control-plane --certificate-key 5bd1a7a13da5c09d77cf4b92227425ab4a0522a86f3753bd3c98c2777b43d784
