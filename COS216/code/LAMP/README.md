# LAMP (Linux, Apache, MySQL, PHP):

This directory contains a few handy scripts for a very basic lamp setup and configuration.

## Dependancies:
	* mariadb ( installs mysql )
	* php-fpm
	* nginx

These can be installed via most package managers.

## Final Notes:
Configurations for nginx and mysql are in the Configurations directory.
With these configs the servers will only be hosted on localhost.

You can start the services by:

````bash
sudo ./start.sh
````

Stop with:
````bash
sudo ./stop.sh
````

Restart with:
````bash
sudo ./restart.sh
````

Please look at the notes posted inside of each configuration file. There are a
few corners to be cut!
