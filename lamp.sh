#!/bin/bash
docker stop lamp
docker rm lamp
docker container prune -f
cd LAMP
docker build . -t mdnurakmal:lamp
docker run -d -t -v $(pwd)/html:/var/www/localhost/htdocs/ -P --name lamp mdnurakmal:lamp
cd ..
curl 172.17.0.2/index.php
