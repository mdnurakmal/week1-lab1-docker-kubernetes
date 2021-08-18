FROM ubuntu:21.10
RUN apt-get update && apt-get install -y \
httpd \
mysql-server \
php \
libapache2-mod-php 

COPY /html /var/www/html
