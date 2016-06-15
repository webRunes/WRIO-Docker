#!/bin/bash

OLDPORTS=( `docker ps | grep wriodockerproduction_core_1 | awk '{print $1}'` )
cd /srv/docker/Wrio-Docker-Production
docker pull webrunes/core-wrio-app && docker-compose up -d core
