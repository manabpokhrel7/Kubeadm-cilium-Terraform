#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token qnh8eo.85y0ljxlf3s345yf --discovery-token-ca-cert-hash sha256:8146c2768b437ecebc0cfb47fe15f8e4930f755d6760eaf423e02af800b88b45  --control-plane --certificate-key 8db2bc831f23e3a4118a06a681d7922cc8557aa5fee20e648037f3f2a033cca8
