#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="kamaluniyal/pybuild1"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag pybuild1 $dockerpath
docker login -u kamaluniyal

# Step 3:
# Push image to a docker repository
docker push $dockerpath