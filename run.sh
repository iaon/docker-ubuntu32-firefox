#!/bin/bash
export DOCKER_NAME=docker-ubuntu32-firefox
#mkdir -p ${HOME}/${DOCKER_NAME}
xhost local:$(whoami)
#docker run --rm -ti --hostname=${DOCKER_NAME}-$(id -un) -e DISPLAY=unix$DISPLAY --net=host -v /tmp/.X11-unix:/tmp/.X11-unix -v ${HOME}/${DOCKER_NAME}:/root -v /dev/snd:/dev/snd --privileged iaon/docker-ubuntu32-firefox:custom
docker run --rm -ti --hostname=${DOCKER_NAME}-$(id -un) -e DISPLAY=unix$DISPLAY --net=host -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/snd:/dev/snd --privileged iaon/docker-ubuntu32-firefox:custom

