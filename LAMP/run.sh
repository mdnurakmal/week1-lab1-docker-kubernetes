#!/bin/bash

# start apache
echo "Starting httpd"
#/usr/sbin/httpd -D FOREGROUND
openrc default
echo "Done httpd"

/etc/init.d/mariadb setup
rc-service mariadb start

tail -f /dev/null
