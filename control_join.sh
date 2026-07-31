#!/bin/bash 
kubeadm join api.kubernetes.manabpokhrel.com.np:6443 --token hjbtyu.sjcy398wnlcfq0kk --discovery-token-ca-cert-hash sha256:262d01fd58fcbf464b80ffd26a9712820626220575ccf491fead59dd94689270  --control-plane --certificate-key dc58253d9f8feb151dd85dd12668eff86c45fcfe50ae5005a247bae68fd9a819
