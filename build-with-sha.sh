#!/bin/bash

export GITSHA=$(git rev-parse --short HEAD)

echo ${GITSHA}

docker-compose up --build

