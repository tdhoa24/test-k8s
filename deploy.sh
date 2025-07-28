#!/bin/bash

echo "Applying Flask deployment..."
microk8s kubectl apply -f flask-deployment.yaml

echo "Applying Flask service..."
microk8s kubectl apply -f flask-service.yaml

echo "Done! Use 'microk8s kubectl get pods' and 'microk8s kubectl get svc' to verify."
