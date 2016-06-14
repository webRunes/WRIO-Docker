#!/bin/bash

OLDPORTS=( `docker ps | grep wriodockerproduction_titter_1 | awk '{print $1}'` )
cd /wriodockerproduction
docker pull webrunes/titter-wrio-app && docker-compose restart titter
