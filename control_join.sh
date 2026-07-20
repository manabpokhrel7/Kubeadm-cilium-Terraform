#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token bepj9t.z17bebxn67kx5jcw --discovery-token-ca-cert-hash sha256:85a48c79476653480ff999cff4299d2c4c9261ed87c1d87182655531da18797a  --control-plane --certificate-key e94a5a6b0c56503da4e5ed2573d4579fc68724ed65d25ce3405d085300841c4a
