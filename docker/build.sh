#!/bin/bash

DOCKER_BUILDKIT=1 docker build --build-arg UID=$(id -u) --build-arg GID=$(id -g) -t yocto_container .

