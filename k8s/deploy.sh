#!/bin/bash

echo "Deploying Flask Microservice to Kubernetes..."

echo "1. Creating Deployment"
microk8s kubectl apply -f flask-deployment.yaml

echo "2. Creating Service (NodePort)"
microk8s kubectl apply -f flask-service.yaml

echo "3. Creating Ingress"
microk8s kubectl apply -f flask-ingress.yaml

echo "4. Creating HorizontalPodAutoscaler"
microk8s kubectl apply -f flask-hpa.yaml

echo "5. Waiting for Pods to be Ready..."
microk8s kubectl rollout status deployment/flask-hello-deployment

echo "6. All resources deployed."

echo "7. If you're using Ingress, add this line to your /etc/hosts:"
echo "192.168.0.142 flask.local"
echo "Then access it at: http://flask.local"

echo "Or use NodePort access:"
echo "http://192.168.0.142:30080"
