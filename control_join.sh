#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token xkf2an.8dgt0wnk3ie28qlj --discovery-token-ca-cert-hash sha256:f167d8492b800d17a9aa4c8f6f055155f84cc0cb674cf66f11e965406dc6d720  --control-plane --certificate-key c113ac5491461b47dc912244ede38fe47e2654f421cf5393b2b03a50af9fef0e
