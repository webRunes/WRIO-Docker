#!/bin/bash

OLDPORTS=( `docker ps | grep wriodockerproduction_login_1 | awk '{print $1}'` )
cd /wriodockerproduction
docker pull webrunes/login-wrio-app && docker-compose restart login