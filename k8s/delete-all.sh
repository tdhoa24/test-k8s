#!/bin/bash

echo "Deleting Flask Microservice from Kubernetes..."

microk8s kubectl delete -f flask-hpa.yaml
microk8s kubectl delete -f flask-ingress.yaml
microk8s kubectl delete -f flask-service.yaml
microk8s kubectl delete -f flask-deployment.yaml

echo "Cleanup complete."
