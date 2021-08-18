FROM alpine:3.14.1

RUN apk update && apk upgrade
RUN apk add apache2 apache2-utils \
mariadb mariadb-client \
php7 php7-fpm php7-opcache

EXPOSE 80 3306

COPY run.sh ./run.sh
RUN chmod +x ./run.sh
# RUN service php7.0-fpm start
ENTRYPOINT ["sh","run.sh"]
