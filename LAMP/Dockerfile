FROM alpine:3.14.1

RUN apk update && apk upgrade
RUN apk add apache2 apache2-utils \
mariadb mariadb-client \
php7 php7-fpm php7-opcache

EXPOSE 80

COPY /html /var/www/html
COPY run.sh /run.sh
RUN chmod u+x /run.sh

CMD ./run.sh
