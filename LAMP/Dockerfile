FROM alpine:3.14.1

RUN apk update && apk upgrade

RUN apk add apache2 apache2-utils \
mariadb mariadb-client \
php7-apache2 \
--no-cache openrc

EXPOSE 80 3306

COPY run.sh ./run.sh
RUN chmod +x ./run.sh
RUN rc-update add apache2 default


ENTRYPOINT ["sh","run.sh"]
