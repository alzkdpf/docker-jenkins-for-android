#!/bin/bash

# docker run script
docker-compose up -d --build

# init android library
docker exec -i jenkins /var/jenkins_home/bootstrap.sh
