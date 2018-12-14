#!/bin/sh
docker build . -t http_server
docker run -d -p 8888:80 http_server
docker ps -a
