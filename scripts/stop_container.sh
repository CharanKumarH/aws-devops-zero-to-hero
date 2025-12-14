#!/bin/bash

set -e

LATEST_CONTAINER_ID=$(docker ps -q | head -n 1)

if [ -n "$LATEST_CONTAINER_ID" ]; then
  docker rm -f "$LATEST_CONTAINER_ID"
fi

echo "Hi -----"
