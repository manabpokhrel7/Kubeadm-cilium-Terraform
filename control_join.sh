#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token yfi7sh.oe7q8vnh5eug1psd --discovery-token-ca-cert-hash sha256:0d398ecbae6e246204df680719a4526b56eeb09a06260ffbe99e05976561d5cc  --control-plane --certificate-key f7039309f954bf0d4df16778b0119f1a0f1e00498fb490e41353092b64eb1a7a
