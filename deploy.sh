#!/bin/bash

echo "Applying Flask deployment..."
kubectl apply -f flask-deployment.yaml

echo "Applying Flask service..."
kubectl apply -f flask-service.yaml

echo "Done! Use 'kubectl get pods' and 'kubectl get svc' to verify."
