#!/bin/bash
IMAGE=devsecops-secure-ci-pipeline
echo "Building Docker image"
docker build -t $IMAGE -f docker/Dockerfile .