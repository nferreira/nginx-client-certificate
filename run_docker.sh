#!/bin/bash

docker run --rm --name nginx -p 8080:8080 -p 8433:8433 \
  -v `pwd`/conf/nginx.conf:/opt/bitnami/nginx/conf/server_blocks/my_server_block.conf:ro \
  -v `pwd`/certs:/certs \
  bitnami/nginx:latest
