#! /bin/bash

# build image with name shipping & tag latest
docker build -t shipping:latest .

# rename repository
docker tag shipping:latest ghcr.io/gesangwibawono1/shipping:latest

# login github container registry
echo $GHCR_PAT | docker login ghcr.io -u gesangwibawono1 --password-stdin

# push github container registry
docker push ghcr.io/gesangwibawono1/shipping:latest