#!/bin/bash
# destroy previously created containers
docker stop lemp
docker rm lemp
docker container prune -f

# go to LAMP directory and build docker image
cd LEMP
docker build . -t mdnurakmal:lemp
docker run -d -t -v $(pwd)/html:/var/www/localhost/htdocs -p 80:80/tcp --name lemp -e MYSQL_ROOT_PASSWORD=password mdnurakmal:lemp
cd ..

# wait for services to load
sleep 15
curl 172.17.0.2/index.php
