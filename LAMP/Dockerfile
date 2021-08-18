FROM alpine:3.7

ENV TZ=Asia/Singapore \
DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
apache2 \
mysql-server \
php \
libapache2-mod-php

EXPOSE 80

COPY /html /var/www/html
COPY run.sh run.sh

CMD ./run.sh
