# https://hub.docker.com/_/alpine/
FROM alpine:3.11

RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
			rsync \
			sshpass \
			openssh-client \
			ca-certificates \
 && apk add --update py-pip \
 && apk --update add --virtual build-dependencies python-dev libffi-dev openssl-dev build-base \
 && pip install --upgrade pip \
 && pip install ansible ansible-lint docker-py \
 && pip install --upgrade pycrypto pywinrm \
 && apk del build-dependencies \
 && update-ca-certificates \
 && rm -rf /var/cache/apk/*
