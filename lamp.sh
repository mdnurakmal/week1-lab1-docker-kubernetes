#!/bin/bash
docker stop lamp
docker rm lamp
cd LAMP
docker build . -t mdnurakmal:lamp
docker run -d -v $(pwd)/html:/var/www/localhost/htdocs/ -P --name lamp mdnurakmal:lamp
