#!/usr/bin/env bash

docker run --rm -d -p 8083:8083 --name da-projekt-do-deploy-java da-projekt-do-deploy-java:1.0.0
docker run --rm -d -p 8081:8081 --name da-projekt-do-deploy-js da-projekt-do-deploy-js:1.0.0
docker run --rm -d -p 8082:8082 --name da-projekt-do-deploy-python da-projekt-do-deploy-python:1.0.0