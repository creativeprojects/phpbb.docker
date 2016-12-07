#!/bin/sh

CONTAINER_NAME=phpbb_creativeprojects_mysql
MYSQL_DATABASE=phpbb
MYSQL_USER=phpbb
MYSQL_PASSWORD=phpbb

docker exec -it $CONTAINER_NAME mysql -A -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE
