#!/bin/bash
set -e

CONTAINER_NAME=flask-app
IMAGE=ram1to6/simple-flask-application:latest

# Stop & remove old container (SAFE)
docker stop $CONTAINER_NAME 2>/dev/null || true
docker rm   $CONTAINER_NAME 2>/dev/null || true

# Pull latest image
docker pull $IMAGE

# Run new container
docker run -d \
  --name $CONTAINER_NAME \
  -p 5000:5000 \
  --restart always \
  $IMAGE

echo "Container started successfully"
