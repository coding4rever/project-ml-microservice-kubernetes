#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=kunlecoder/project4
echo "Docker ID and Image: $dockerpath"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run project4 --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a hub
kubectl port-forward project4 8000:80
#kubectl expose deployment project4-minikube --type=NodePort --port=8080

