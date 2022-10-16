#/bin/bash

kubectl apply -f k8s/namespace.yaml

kubectl apply -f k8s/deployment.yaml -n=go-app-k8s

kubectl apply -f k8s/service.yaml -n=go-app-k8s
