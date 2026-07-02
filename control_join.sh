#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token n22q5a.eu6gqi51ypvzphqv --discovery-token-ca-cert-hash sha256:cdffeffda8bec2550c05e985ad50decea176bd1f57ae8915398260f72c79ef64  --control-plane --certificate-key 5b246c7964c240857e4de6e480f54307259440f3771f7a8a1bf1d954ddd5cd16
