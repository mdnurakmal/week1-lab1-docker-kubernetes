FROM alpine:3.14.1

RUN apk update && apk upgrade

RUN apk add apache2 apache2-utils \
mariadb mariadb-client \
php7-apache2 php7 php7-fpm php7-opcache\
--no-cache openrc

EXPOSE 80 3306

COPY run.sh ./run.sh
RUN chmod +x ./run.sh
RUN rc-update add php-fpm7 default
RUN rc-update add apache2 default
COPY /configs/httpd.conf /etc/apache2/httpd.conf

ENTRYPOINT ["sh","run.sh"]
