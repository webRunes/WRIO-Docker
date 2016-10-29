#!/bin/bash

OLDPORTS=( `docker ps | grep wriodockerproduction_storage_1 | awk '{print $1}'` )
cd /srv/docker/Wrio-Docker-Production
docker pull webrunes/storage-wrio-app && /usr/local/bin/docker-compose up -d storage
