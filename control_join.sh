#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token eq7rju.7n309qw4wm5e7byz --discovery-token-ca-cert-hash sha256:6a0c0711310e6f32ca11fb5d21c6850ff3bd8f28bb27454c822cf6ab46fd3eea  --control-plane --certificate-key 31a4e40d02714d58b3c759872f62772e43fc03f9cc093f8b28e8c5fa6812b5d2
