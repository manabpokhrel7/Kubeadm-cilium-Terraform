#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token b7mp5d.cu5t5suc8hghypig --discovery-token-ca-cert-hash sha256:03227fbcd45195275bf3fb8c24db111fa19dc2599e22beaf287998eb2efddf91  --control-plane --certificate-key f40675b0af5efd5aade49d04effbdd720b06f128801ad8c7f061a88dd17a9831
