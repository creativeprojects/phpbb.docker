#!/bin/sh

IMAGE_NAME=phpbb_creativeprojects/mysql-server
CONTAINER_NAME=phpbb_creativeprojects_mysql

echo "Cleaning up image and container..."
docker rm -v $CONTAINER_NAME
docker rmi $IMAGE_NAME

echo "Building the container..."
docker build -t $IMAGE_NAME .
