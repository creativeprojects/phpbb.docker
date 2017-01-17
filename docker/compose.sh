#!/bin/bash

# This is a poor's man docker-compose. I think our project is simple enough that a simple script will do

cd $(dirname "${0}")
BASEDIR=$(pwd -L)
VOLUME=$BASEDIR/../phpBB3

. ./config.sh

echo "The volume is shared from this local folder: $VOLUME"

echo "Starting containers..."
docker run -d --name=$MYSQL_CONTAINER $MYSQL_IMAGE
# You can uncomment this line if you need phpmyadmin: It will be available on port 8080
docker run -d -p $EXPOSE_IP_ADDRESS:8080:80 --link $MYSQL_CONTAINER:db --name $PHPMYADMIN_CONTAINER $PHPMYADMIN_IMAGE
docker run -d --link $MYSQL_CONTAINER:db -v $VOLUME:/var/www/html --name $PHP_CONTAINER $PHP_IMAGE
docker run -d -p $EXPOSE_IP_ADDRESS:80:80 --link $PHP_CONTAINER:fpm -v $VOLUME:/var/www/html --name $NGINX_CONTAINER $NGINX_IMAGE

cd - >/dev/null
