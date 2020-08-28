#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=tamerthamoqa/udacity_devops_project4

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=tamerthamoqa
docker tag udacity_devops_project4 tamerthamoqa/udacity_devops_project4

# Step 3:
# Push image to a docker repository
docker push tamerthamoqa/udacity_devops_project4
