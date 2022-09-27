#!/bin/bash
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.12.1/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.12.1/manifests/metallb.yaml
kubectl wait --for=condition=ready pod -l app=metallb -n metallb-system
kubectl apply -f metallb.yaml