#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=fr13drich/machinelearning

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag machinelearning fr13drich/machinelearning:v1.0.0
# Step 3:
# Push image to a docker repository
docker push fr13drich/machinelearning:v1.0.0