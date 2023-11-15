#!/bin/bash

docker stop server
docker rm server
docker rmi -f fastcgi_nginx:1.0