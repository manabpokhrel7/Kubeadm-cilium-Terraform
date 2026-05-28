#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token t7dsuw.dzc8lm7qgjyahz4p --discovery-token-ca-cert-hash sha256:3f8209a5e89575d0310cec647cad58d6737659565915611ead490c75c850448c  --control-plane --certificate-key ad527fea06a2044a63220470813a36cef0dc9395a9f6c76a03af6fb80e4ab21d
