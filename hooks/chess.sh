#!/bin/bash

OLDPORTS=( `docker ps | grep wriodockerproduction_chess_1 | awk '{print $1}'` )
cd /wriodockerproduction
docker pull webrunes/chess-wrio-game && docker-compose restart chess
