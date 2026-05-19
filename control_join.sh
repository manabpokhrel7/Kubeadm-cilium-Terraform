#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token bao02u.8vyt30zvq88e57cz --discovery-token-ca-cert-hash sha256:1dd62d5bc25c6b90977ce21a3932317331f2b917374b85cfd632a6fd91b91b47  --control-plane --certificate-key 56baf84218ea805751b5b5c9f1a6c6212f42bb485128fb5b8bedd13cda0359f6
