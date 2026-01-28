#!/bin/bash
set -e

CONTAINER_NAME=simple-python-flask-app
IMAGE_NAME=siva2219/simple-python-flask-app:latest

echo "Stopping existing container if running..."
docker rm -f $CONTAINER_NAME || true

echo "Pulling latest image..."
docker pull $IMAGE_NAME

echo "Starting new container..."
docker run -d \
  --name $CONTAINER_NAME \
  -p 5000:5000 \
  $IMAGE_NAME
