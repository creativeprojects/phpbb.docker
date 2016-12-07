#!/bin/bash

# This is a poor's man docker-compose. I think our project is simple enough that a simple script will do

cd $(dirname "${0}")
BASEDIR=$(pwd -L)
VOLUME=$BASEDIR/www

echo "The volume is shared from this local folder: $VOLUME"

echo "Starting our containers..."
docker run -d --name=phpbb_creativeprojects_mysql phpbb_creativeprojects/mysql-server
# You can uncomment this line if you need phpmyadmin: It will be available on port 8080
# docker run -d -p 8080:80 --link phpbb_creativeprojects_mysql:db --name phpmyadmin phpmyadmin/phpmyadmin
docker run -d --link phpbb_creativeprojects_mysql:db -v $VOLUME:/var/www/html --name phpbb_creativeprojects_php phpbb_creativeprojects/php
docker run -d -p 127.0.10.1:80:80 --link phpbb_creativeprojects_php:fpm -v $VOLUME:/var/www/html --name phpbb_creativeprojects_nginx phpbb_creativeprojects/nginx

cd - >/dev/null
