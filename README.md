manifests/persistent-volume.yaml is used to allocate PV in our cluster for database which needs PVC
execute.sh is for deploying the cluster and configuration and destroy.sh is for destroying the cluster,
automation-setup.yml contains the installation of kubernetes in the cluster with kubeadm and cilium installation
control.yml configures the control plane
worker.yml configures the worker nodes and joins to the control
cilium-config.yml is used to deploy cilium gateway api/envoy into our cluster for the HTTP routing for our deployed application
