#!/bin/bash

# This is a bash script to stop and configure mariadb, php, nginx.
# It assumes you don't want a permanent webserver and uses systemctl
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi


systemctl stop mysqld
systemctl stop nginx
systemctl stop php-fpm
