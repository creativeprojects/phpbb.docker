#!/bin/bash

MYSQL_CONTAINER=phpbb_creativeprojects_mysql
MYSQL_IMAGE=phpbb_creativeprojects/mysql-server

PHP_CONTAINER=phpbb_creativeprojects_php
PHP_IMAGE=phpbb_creativeprojects/php

NGINX_CONTAINER=phpbb_creativeprojects_nginx
NGINX_IMAGE=phpbb_creativeprojects/nginx

PHPMYADMIN_CONTAINER=phpbb_phpmyadmin
PHPMYADMIN_IMAGE=phpmyadmin/phpmyadmin

EXPOSE_IP_ADDRESS=127.0.3.1
