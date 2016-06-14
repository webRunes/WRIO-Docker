#!/bin/bash

OLDPORTS=( `docker ps | grep wriodockerproduction_core_1 | awk '{print $1}'` )
cd /wriodockerproduction
docker pull webrunes/core-wrio-app && docker-compose restart core
