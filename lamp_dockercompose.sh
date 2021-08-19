#!/bin/bash
# go to LAMP directory and run docker compose
cd LAMP_Dockercompose

# destroy existing containers and rebuild a new one
docker-compose down
docker-compose up -d

cd ..

# wait for services to load
sleep 15
curl 172.17.0.2/index.php
