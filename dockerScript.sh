#!/bin/sh
docker build . -t http_server

if [ "${BRANCH_NAME}" = "dev" ] || [ "${BRANCH_NAME}" = "stage" ]; then
    HTTP_SERVER_PORT=8888
else
    HTTP_SERVER_PORT=80
fi

docker run -d -p $HTTP_SERVER_PORT:80 http_server
