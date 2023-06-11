#! /bin/bash

# build image with name item-app & tag v1
docker build -t item-app:v1 .

# show image list
docker images

# rename repository
docker tag item-app:v1 ghcr.io/gesangwibawono1/item-app:v1

# login docker hub
echo $GHCR_PAT | docker login ghcr.io -u gesangwibawono1 --password-stdin

# push image to docker hub
docker push ghcr.io/gesangwibawono1/item-app:v1
