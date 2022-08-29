#!/usr/bin/env bash
# This file tags and uploads an image to the Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=kunlecoder/project4

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag project4:latest $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push kunlecoder/project4:latest

