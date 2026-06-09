#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token g35jal.cqyebacygx30lwiq --discovery-token-ca-cert-hash sha256:8172540bfbfc989d1e6013d27e90ab7b0cdd19f562f57e7239502452418eacf7  --control-plane --certificate-key 0cf56ee5e6e0e83f65ad8989089a4c8ec16d2e084b42a7a661727990ccfab18e
