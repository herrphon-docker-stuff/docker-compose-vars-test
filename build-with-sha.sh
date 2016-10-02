#!/bin/bash

export GITSHA=$(git rev-parse --short HEAD)
docker-compose up --build

