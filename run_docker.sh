#!/usr/bin/env bash

# WHEN is the tag to the R library snapshot 
TAG_NAME="docker_demo:1.0.0"
WHEN="2018-04-23"

# build and run the package
docker build --build-arg WHEN=${WHEN} -t ${TAG_NAME} . && \
    docker run --rm -v $PWD/data:/app/data -it ${TAG_NAME} /bin/bash  
