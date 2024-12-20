#!/bin/bash
# Deploy the Todo List app to Kubernetes

# Step 1: Apply the MySQL configuration
kubectl apply -f ../k8s/mysql-deployment.yaml

# Step 2: Apply the Flask backend configuration
kubectl apply -f ../k8s/flask-backend-deployment.yaml

# Step 3: Apply the Frontend configuration
kubectl apply -f ../k8s/frontend-deployment.yaml

# Step 4: Verify deployments
kubectl get pods
