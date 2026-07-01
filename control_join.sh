#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token 1a2zxb.qv31lny3haop6ws0 --discovery-token-ca-cert-hash sha256:31de189b596afb6e47d4a8b4207a576ba26cdc1836294001fa5a98e4f61f319c  --control-plane --certificate-key a97fbca797eeaadbaec93c76982fee8968ab26f20bc889b8b4ae52ce7680e32e
