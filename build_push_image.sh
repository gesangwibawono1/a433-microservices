#! /bin/bash

# build image with name item-app & tag v1
docker build -t item-app:v1 .

# show image list
docker images

# rename repository
docker item-app:v1 gesangwibawono/item-app:v1

# login docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u gesangwibawono --password-stdin

# push image to docker hub
docker push gesangwibawono/item-app:v1
