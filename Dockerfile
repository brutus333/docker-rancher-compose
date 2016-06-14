FROM alpine

MAINTAINER Virgil Chereches <virgil.chereches@gmx.net>

RUN apk update && apk add curl

RUN cd /tmp && \
    curl -Lk https://releases.rancher.com/compose/v0.8.2/rancher-compose-linux-amd64-v0.8.2.tar.gz > rancher-compose.tar.gz && \
    tar xzvf rancher-compose.tar.gz && \
    mv rancher-compose*/rancher-compose /usr/local/bin && \
    rm -rf rancher-compose.tar.gz && rmdir rancher-compose*

CMD /bin/sh
