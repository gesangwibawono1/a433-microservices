#! /bin/bash

# build image with name karsajobs-ui & tag latest
docker build -t karsajobs-ui:latest .

# rename repository
docker tag karsajobs-ui:latest ghcr.io/gesangwibawono1/karsajobs-ui:latest

# login github container registry
echo $GHCR_PAT | docker login ghcr.io -u gesangwibawono1 --password-stdin

# push image to github container registry
docker push ghcr.io/gesangwibawono1/karsajobs-ui:latest