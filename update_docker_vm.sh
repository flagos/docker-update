#!/usr/bin/env bash

docker pull gogs/gogs
docker stop gogs
docker rm gogs
docker run -d --name=gogs -p 10022:22 -p 10080:3000 -v /var/gogs:/data gogs/gogs

