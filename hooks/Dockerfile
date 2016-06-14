FROM bketelsen/captainhook

RUN curl -fsSL https://get.docker.com/ | sh
RUN curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

RUN chmod +x /usr/local/bin/docker-compose