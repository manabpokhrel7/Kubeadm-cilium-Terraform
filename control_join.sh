#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token 0yvbm0.jkmfm3huq854k5ow --discovery-token-ca-cert-hash sha256:fa4c095892eab04adf71c5e46cf73194a0e5391c3ce7c9b140e95252f05861f5  --control-plane --certificate-key d58d6222e1e52d7c1fbebb0cee5a19561717ea0329b883dcc496c241c804667e
