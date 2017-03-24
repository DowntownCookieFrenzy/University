#!/bin/bash

# This is a bash script to start and configure mariadb, php, nginx.
# It assumes you don't want a permanent webserver and uses systemctl
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

systemctl start mysqld
systemctl start nginx
systemctl start php-fpm
