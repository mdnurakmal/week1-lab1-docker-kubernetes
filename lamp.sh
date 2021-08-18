#!/bin/bash
docker stop lamp
docker rm lamp
docker container prune -f
cd LAMP
docker build . -t mdnurakmal:lamp
docker run -d -t -v $(pwd)/html:/var/www/localhost/htdocs/ -p 80:80/tcp --name lamp mdnurakmal:lamp
cd ..
sleep 15
curl 172.17.0.2/index.php
