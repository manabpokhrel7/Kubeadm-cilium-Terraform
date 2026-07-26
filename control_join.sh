#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token l3os25.kmef0v0yuqhpfs02 --discovery-token-ca-cert-hash sha256:b39c60ea577a426c3ecd5a6518b5dc9526304e42dacf265842508631654c8a95  --control-plane --certificate-key d65bb9182a437318d9364970adf6585af64460428c60f35a33b297129b4be0a9
