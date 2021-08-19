#!/bin/bash
# go to LAMP directory and run docker compose
cd LAMP_Dockercompose

# destroy previously created docker swarm
docker-compose down
docker-compose up -d


# wait for services to load
sleep 15
curl 172.17.0.2/index.php
