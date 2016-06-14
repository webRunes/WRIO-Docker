#!/bin/bash

OLDPORTS=( `docker ps | grep wriodockerproduction_storage_1 | awk '{print $1}'` )
cd /wriodockerproduction
docker pull webrunes/storage-wrio-app && docker-compose restart storage
