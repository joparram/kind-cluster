#!/bin/bash
helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update
helm upgrade --install ingress-controller-default nginx-stable/nginx-ingress -n kube-system -f $(pwd)/nginx.yaml
