#!/bin/bash

OLDPORTS=( `docker ps | grep wriodockerproduction_webgold_1 | awk '{print $1}'` )
cd /srv/docker/Wrio-Docker-Production
docker pull webrunes/webgold-wrio-app && /usr/local/bin/docker-compose up -d webgold
