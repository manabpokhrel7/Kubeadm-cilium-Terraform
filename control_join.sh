#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token 0bhdfe.wco7dkmstmz8dshp --discovery-token-ca-cert-hash sha256:4ed3f114f8c9dc5d81f361fe019d014655c61deff6a363f556326dad3dffd340  --control-plane --certificate-key 61937b82f8d567741229ca66a1622653088a71c02f24e1aacee7fd64f2ffae79
