#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

echo "Stopping services . . ."
./stop.sh
echo "Clearing logs"
rm -f ./Logs/*

echo "Starting services . . ."
./start.sh
echo "Done!"
