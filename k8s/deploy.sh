#!/bin/bash

echo "Deploying Flask Microservice to Kubernetes..."

echo "1. Creating Deployment"
microk8s kubectl apply -f flask-deployment.yaml

echo "2. Creating Service"
microk8s kubectl apply -f flask-service.yaml

echo "3. Creating Ingress"
microk8s kubectl apply -f flask-ingress.yaml

echo "4. Creating HorizontalPodAutoscaler"
microk8s kubectl apply -f flask-hpa.yaml

echo "5. Waiting for Pods to be Ready..."
microk8s kubectl rollout status deployment flask-hello-deployment

echo "6. All resources deployed."

echo "7. Add the following line to your /etc/hosts if not already added:"
echo "127.0.0.1 flask.local"

echo "8. Access your app at http://flask.local"
