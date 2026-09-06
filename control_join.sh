#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token ptv40x.yitg8slp071semjh --discovery-token-ca-cert-hash sha256:afcf9dbcfd9190dd7ffc32b416001027bea73195fb1058ea1c30caf18be7e1d4  --control-plane --certificate-key 3ae12dcb9b56e469470ec705a83dbce772b59facead8b52f8b39b6208cd1f174
