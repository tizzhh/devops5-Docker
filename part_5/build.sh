#!/bin/bash

# export DOCKER_CONTENT_TRUST=1
docker build -t fastcgi_nginx:1.0 -f Dockerfile-part5 .
docker run -d -p 80:81 --name server -v $(pwd)/nginx:/etc/nginx fastcgi_nginx:1.0 