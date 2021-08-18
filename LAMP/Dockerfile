FROM alpine:3.14.1

RUN apk update && apk upgrade

RUN apk add apache2 apache2-utils \
mariadb mariadb-client \
php7-apache2 \
--no-cache openrc

COPY run.sh ./run.sh
RUN chmod +x ./run.sh
RUN rc-update add apache2 default
RUN rc-update add mariadb default
RUN /etc/init.d/mariadb setup
ENTRYPOINT ["sh","run.sh"]
