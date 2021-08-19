#!/bin/bash
# go to LAMP directory and run docker compose
cd LAMP_Dockercompose

# destroy existing containers and rebuild a new one
docker-compose down
docker-compose up -d

cd ..

# wait for services to load
sleep 5
curl localhost/index.php
