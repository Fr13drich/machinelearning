#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=fr13drich

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy machinelearning --image=$dockerpath/machinelearning:v1.0.0
kubectl expose deployment machinelearning --type=NodePort --port=80
# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods
mypod=`kubectl get pods --no-headers=true | cut -f 1 -d " "`
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/$mypod --address 0.0.0.0 8000:80&

