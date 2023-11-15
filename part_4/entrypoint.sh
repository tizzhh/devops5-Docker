#!/bin/bash

service nginx start
spawn-fcgi -p 8080 ./mini-server
nginx -s reload

while true; do
    sleep 1d
done