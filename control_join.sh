#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token 1kfetz.y52agf2zi6k0ksog --discovery-token-ca-cert-hash sha256:ff53da3695f4d0a2e22694ce42ef756d4c9059e4a912c7d07ea900afec69659d  --control-plane --certificate-key f934a891be0efbfa2059bfb742a44da453d8e9a46fe1f687358bafcb21ebc59f
