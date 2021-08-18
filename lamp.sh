#!/bin/bash
docker stop lamp

docker build . -t mdnurakmal:lamp
docker run -d -v $(pwd)/html:/var/www/localhost/htdocs/ -P mdnurakmal:lamp --name lamp
