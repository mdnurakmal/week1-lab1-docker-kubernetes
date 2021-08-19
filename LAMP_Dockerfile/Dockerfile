FROM alpine:3.14.1

RUN apk update && apk upgrade

RUN apk add apache2 apache2-utils \
mariadb mariadb-client \
php7-apache2 php7-iconv php7-xml \
phpmyadmin \
--no-cache openrc

COPY run.sh ./run.sh
RUN chmod +x ./run.sh
RUN rc-update add apache2 default
RUN rc-update add mariadb default

ENTRYPOINT ["sh","run.sh"]
