#!/bin/bash
set -e

# Stop the running container (if any)
latest_container_id =`docker ps | awk -F " " '{print $1}'`
docker rm -f latest_container_id
echo "Hi"
