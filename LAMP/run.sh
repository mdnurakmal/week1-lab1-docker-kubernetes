#!/bin/bash

# start apache
echo "Starting httpd"
#/usr/sbin/httpd -D FOREGROUND
openrc default
echo "Done httpd"

/etc/init.d/mariadb setup
rc-service mariadb start

mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}'"

tail -f /dev/null
