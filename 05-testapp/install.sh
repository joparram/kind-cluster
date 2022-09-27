#!/bin/bash
kubectl apply -f namespace.yaml
kubectl apply -f deployment.yaml
kubectl apply -f svc.yaml
kubectl apply -f ingress.yaml
