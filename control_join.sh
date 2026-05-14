#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token 5eq3tn.5yq3wrzetoz9mola --discovery-token-ca-cert-hash sha256:f45418eef85a2471e8c006987d1cf62388b13549dc8371704baa663ef78881fe  --control-plane --certificate-key 27b897f465c30b7294a43f2efefa2701105f72cb4aef73d424badd811c9e975b
