#!/bin/bash

OLDPORTS=( `docker ps | grep wriodockerproduction_webgold_1 | awk '{print $1}'` )
cd /srv/docker/Wrio-Docker-Productiongg
docker pull webrunes/webgold-wrio-app && docker-compose up -d webgold
