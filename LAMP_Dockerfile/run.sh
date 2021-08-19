#!/bin/bash

#change run level to start apache , php
openrc default

#init mariadb
/etc/init.d/mariadb setup
rc-service mariadb start

#secure mariadb
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}'"
printf "${MYSQL_ROOT_PASSWORD}\n n\n n\n n\n y\n y\n y\n" | mysql_secure_installation

ln -s /usr/share/webapps/phpmyadmin/ /var/www/localhost/htdocs/phpmyadmin

#keep container running
tail -f /dev/null
