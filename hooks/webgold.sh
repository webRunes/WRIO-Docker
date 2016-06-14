#!/bin/bash

OLDPORTS=( `docker ps | grep wriodockerproduction_webgold_1 | awk '{print $1}'` )
cd /wriodockerproduction
docker pull webrunes/webgold-wrio-app && docker-compose restart webgold
