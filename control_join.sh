#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token ohca3c.b8k4t9wozs9bfgct --discovery-token-ca-cert-hash sha256:163c50939db31e3b2d3e7cda3812871609dbf39d8acdbb90d41a194fc51d2a62  --control-plane --certificate-key c2551d8d430941dc4016747c2c26fc3b8e7e8f2b13f08602b5862525e2eee44d
