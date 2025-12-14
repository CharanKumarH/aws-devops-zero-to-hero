#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull ram1to6/simple-flask-application

# Run the Docker image as a container
docker run -d -p 5000:5000 ram1to6/simple-flask-application
