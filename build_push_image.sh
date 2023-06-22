#! /bin/bash

# build image with name order & tag latest
docker build -t order:latest .

# rename repository
docker tag order:latest ghcr.io/gesangwibawono1/order:latest

# login github container registry
echo $GHCR_PAT | docker login ghcr.io -u gesangwibawono1 --password-stdin

# push image to github container registry
docker push ghcr.io/gesangwibawono1/order:latest