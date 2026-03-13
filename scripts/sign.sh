#!/bin/bash
IMAGE=devsecops-secure-ci-pipeline

if [ ! -f cosign.key ]; then
  echo "Generating cosign key pair"
  export COSIGN_PASSWORD=password
  cosign generate-key-pair
fi


echo "Signing container image"
cosign sign --key cosign.key $IMAGE