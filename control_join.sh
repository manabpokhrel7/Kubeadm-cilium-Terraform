#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token ua4f0u.002hk5b29nxtrkwp --discovery-token-ca-cert-hash sha256:a64b06ae797c04d73f430d03f78e91c42951569b970fcd804b1e20a09704171a  --control-plane --certificate-key 405ab46bba5f6627732e627ec82a7140adea55bd4aed7283c8a5abf73cc85398
