#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token fw0d73.u6b9atdrjwyz4m3n --discovery-token-ca-cert-hash sha256:af2f8db5c9fa2a1b3d20bdccc6f4ceeca929a10fa31d846d75bb14674540190b  --control-plane --certificate-key 9fbf3215b34a6fdba775317f20957ad77d4629789204d8bf18b261c6a06b7022
