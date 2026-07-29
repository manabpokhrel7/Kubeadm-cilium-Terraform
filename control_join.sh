#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token k24ysr.t7y9felklrxgkl5l --discovery-token-ca-cert-hash sha256:0cbb5d45c6f8b6a54376176b6242909a86dffbbdbbae479c8816f1632936028e  --control-plane --certificate-key 222e3ca1f54f1fcaf01a4682147f22a1ed17d161f1d77a24c61e1923f6bff61f
