#!/bin/bash

# docker run script
docker-compose up -d --build

# delay
sleep 10

# init android library
docker exec -i jenkins /usr/bin/bootstrap.sh
