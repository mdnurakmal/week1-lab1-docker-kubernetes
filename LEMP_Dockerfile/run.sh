#!/bin/bash

#change run level to start apache , php
openrc default

#init mariadb
/etc/init.d/mariadb setup
rc-service mariadb start

#secure mariadb
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}'"
printf "${MYSQL_ROOT_PASSWORD}\n n\n n\n n\n y\n y\n y\n" | mysql_secure_installation

cd /usr/share/webapps
wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
rm phpMyAdmin-5.0.2-all-languages.tar.gz
mv phpMyAdmin-5.0.2-all-languages phpmyadmin
ln -s /usr/share/webapps/phpmyadmin/ /var/www/html/phpmyadmin

#keep container running
tail -f /dev/null
