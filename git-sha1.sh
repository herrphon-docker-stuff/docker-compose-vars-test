#!/bin/bash

HASH=$(git rev-parse --short HEAD)

echo ${HASH}
