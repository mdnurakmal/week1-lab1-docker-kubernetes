#!/bin/bash
# destroy previously created containers
docker stop lamp
docker rm lamp
docker container prune -f

# go to LAMP directory and build docker image
cd LAMP
docker build . -t mdnurakmal:lamp
docker run -d -t -v $(pwd)/html:/var/www/localhost/htdocs/ -p 80:80/tcp --name lamp -e MYSQL_ROOT_PASSWORD=password mdnurakmal:lamp
cd ..

# wait for services to load
sleep 15
curl 172.17.0.2/index.php
