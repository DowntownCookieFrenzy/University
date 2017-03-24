# LAMP (Linux, Apache, MySQL, PHP):

This directory contains a few handy scripts for a very basic lamp setup and configuration.

## Disclaimer:
This setup is by no means secure, hell it won't even work out of the box but it is a nice example of what a test server would
look like!

## Dependancies:
	- mariadb ( installs mysql )
	- php-fpm
	- nginx

These can be installed via most package managers.

## Configuration:
You need to create a database so that php can connect to it. At the same time you also need to setup
the php engine to work with the mysql modules. This all done by just editing the config files.

## Final Notes:
Configurations for nginx and mysql are in the Configurations directory.
With these configs the servers will only be hosted on localhost.

You can start the services by:

``bash
sudo ./start.sh
``

Stop with:
``bash
sudo ./stop.sh
``

Restart with:
``bash
sudo ./restart.sh
``

Please look at the notes posted inside of each configuration file. There are a
few corners to be cut!
