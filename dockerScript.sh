#!/bin/sh
docker build . -t http_server

# Check if we're on AWS or GCP by curling AWS default metadata url
if curl -if http://169.254.169.254/latest/meta-data/; then
     HTTP_SERVER_PORT=8888
else
    HTTP_SERVER_PORT=80
fi

docker run -d -p $HTTP_SERVER_PORT:80 http_server
