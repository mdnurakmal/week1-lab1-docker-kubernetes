#!/bin/bash
# destroy previously created containers
docker stop lemp
docker rm lemp
docker container prune -f

# go to LAMP directory and build docker image
cd LEMP_Dockerfile
docker build . -t mdnurakmal:lemp
docker run -d -t -v $(pwd)/html:/var/www/html -p 80:80/tcp 3306:3306/tcp --name lemp -e MYSQL_ROOT_PASSWORD=password mdnurakmal:lemp
cd ..

# wait for services to load
sleep 5
curl localhost/index.php
