FROM ubuntu:21.10

ENV TZ=Asia/Singapore \
DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
apache2 \
mysql-server \
php \
libapache2-mod-php

RUN ufw allow 'Apache Full'

COPY /html /var/www/html
