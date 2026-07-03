#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token fgu067.xa30pun71ynga2dt --discovery-token-ca-cert-hash sha256:63dba59438f6ba84468c8d5f19c8cb63e49f75609d2cc4d38c9934d81e7144a3  --control-plane --certificate-key 0ce41bd1fd2447b5a0ca76dffdf1bdd75639b93c02360f98732b7144e3eb6c3b
