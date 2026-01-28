#!/bin/bash
set -e

CONTAINER_NAME=simple-python-flask-app

echo "Stopping container..."
docker rm -f $CONTAINER_NAME || true
