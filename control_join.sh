#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token 1ey255.3jzw8m1qettri4ps --discovery-token-ca-cert-hash sha256:b9174b546d0d227952d7e00b27c092f146bf503f4c9dd038ba3af016deb804e2  --control-plane --certificate-key 43b67cbee45df98b37af2b47cde8758991d2171439c17b7af1b8f4d9744cde95
