#!/bin/bash

# membuat docker image
docker build -t ghcr.io/auzty/karsajobs:latest .

# login ke github packages
echo $PASSWORD_DOCKER_HUB | docker login ghcr.io -u auzty --password-stdin

# mengunggah image ke github packages
docker push ghcr.io/auzty/karsajobs:latest