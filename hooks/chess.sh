#!/bin/bash

OLDPORTS=( `docker ps | grep wriodockerproduction_chess_1 | awk '{print $1}'` )
cd /srv/docker/Wrio-Docker-Production
docker pull webrunes/chess-wrio-game && /usr/local/bin/docker-compose up -d chess
