#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token cnxra3.vp98nqwk5egh5x5u --discovery-token-ca-cert-hash sha256:81913560e9a6f22ea4883b0d62dc4e10a5cc0ef96ee90753c6df4a69ab533c66  --control-plane --certificate-key 3ccd2a1ba7feb1e7684119d037781eb4d68adc81d9375b0498ba2190f0c8bd21
