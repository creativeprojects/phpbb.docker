#!/bin/sh

docker stop phpbb_creativeprojects_nginx
docker stop phpbb_creativeprojects_php
docker stop phpbb_creativeprojects_mysql

docker rm -v phpbb_creativeprojects_nginx
docker rm -v phpbb_creativeprojects_php
docker rm -v phpbb_creativeprojects_mysql
