# Wrio-Docker-Production

Repository to start production grade wrio system using Docker.

Benefits: faster deploy, automated builds by docker hub, don't need to compile application on server.
Faster deploy time.

* Warning, still experimental

# How to start

clone repository
create configs directory with subfolders(login-wrio-app, titter-wrio-app, 

place configs in configs directory ./configs/login-wrio-app/config.json etc.

```
docker-compose build
docker-compose up
```

TODO make travis hook to initiate docker-hub build

TODO: investigate using https://github.com/CenturyLinkLabs/watchtower for restarting containers

```
В принципе нам надо убрать OpsWorks, он совсем не согласуется с архитектурой docker. 
При успешном билде Travis нам надо запускать билд на Docker hub. 
Основная задача это заставить инстанс автоматически запускать свежие образы сделанные dockerhub. 
```

# To start docker in the backgroud

```
docker-compose up --no-deps -d
```

to see the logs

```
docker-compose logs
```

To update service to newer image

```
docker-compose up -d --no-deps service
```
