#!/bin/bash
kubectl create -f trigera-operator.yaml
kubectl create -f calico.yaml
kubectl taint nodes --all node-role.kubernetes.io/control-plane- node-role.kubernetes.io/master-
kubectl wait --for=condition=ready pod -l 'app.kubernetes.io/name in (calico-kube-controllers,calico-node,calico-typha,csi-node-driver)' -n metallb-system