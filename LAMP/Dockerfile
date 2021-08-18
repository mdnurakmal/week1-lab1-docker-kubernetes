FROM ubuntu:21.10
RUN apt-get update && apt-get install -y \
apache2 \
mysql-server \
php \
libapache2-mod-php

RUN ufw allow 'Apache Full'

COPY /html /var/www/html
