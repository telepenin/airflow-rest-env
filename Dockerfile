# https://hub.docker.com/_/alpine/
FROM alpine:3.11

RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
            rsync \
            openssh-client \
            ca-certificates \
            ansible \
 && update-ca-certificates \
 && rm -rf /var/cache/apk/*
