#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token drm92y.16qgin7g6wsg8rkj --discovery-token-ca-cert-hash sha256:f2ef0fad3f74ce43d2da52d176ee3169c6cff2aad9ea7a5240d788c85b4e4c79  --control-plane --certificate-key 8f0993ca3d2c048e3c1a9f6da1d23e8bf2f63f71f1e4a8a53b8f32958b61d6ca
