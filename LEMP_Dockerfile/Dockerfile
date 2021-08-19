FROM alpine:3.14.1

RUN apk update && apk upgrade

RUN apk add nginx \
mariadb mariadb-client \
php7 php7-fpm php7-opcache \
phpmyadmin \
--no-cache openrc

COPY run.sh ./run.sh
COPY /configs/default.conf /etc/nginx/http.d/default.conf
RUN chmod +x ./run.sh
RUN rc-update add nginx default
RUN rc-update add php-fpm7 default
RUN rc-update add mariadb default

ENTRYPOINT ["sh","run.sh"]
