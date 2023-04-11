# https://hub.docker.com/_/alpine/
FROM alpine:3.17

RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
			ca-certificates \
            curl \
            jq \
 && update-ca-certificates \
 && rm -rf /var/cache/apk/*
