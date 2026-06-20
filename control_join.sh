#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token 1b2eu4.8p4h77c648nb6a99 --discovery-token-ca-cert-hash sha256:daef3bd116f257ea5108cd78965e947c6fd241553ec390239d6db0ae4aa0b748  --control-plane --certificate-key 6eda5450680cf91f5989c913d16ac96078dfd449faa53912f2e8f10a01f096a3
