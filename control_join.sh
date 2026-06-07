#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token s9bjay.i181wu7hrn44f6v9 --discovery-token-ca-cert-hash sha256:62b8306614a03d6c13479b11eb345377c5bb4277d059071b12d319dd826dd3fc  --control-plane --certificate-key 0d2a2f8d469d49996f9cf64bc27ad42f8de2ae45eac34a3c67068df8bfc0abd0
