#!/bin/sh

. ./config.sh

docker stop $PHPMYADMIN_CONTAINER
docker stop $NGINX_CONTAINER
docker stop $PHP_CONTAINER
docker stop $MYSQL_CONTAINER

docker rm -v $PHPMYADMIN_CONTAINER
docker rm -v $NGINX_CONTAINER
docker rm -v $PHP_CONTAINER
docker rm -v $MYSQL_CONTAINER
