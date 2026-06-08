#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token owcmrz.1ocam7f9r6b0jy4t --discovery-token-ca-cert-hash sha256:26406625ada13bff54571d96b47285e1f7fab7bbb41743b88f25cab0a62d5d07  --control-plane --certificate-key de845a196ed3ea267ea221f61599343621b485d351b3e6ae5e23bf6ac186c5e2
