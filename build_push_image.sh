#!/bin/bash

# membuat docker image
docker build -t item-app:v1 .

# daftar docker image di lokal
docker images

# mengubah nama image agar sesuai repository
docker tag item-app:v1 ghcr.io/auzty/item-app:v1

# login ke github packages
echo $PASSWORD_DOCKER_HUB | docker login -u auzty --password-stdin

# mengunggah image ke github packages
docker push ghcr.io/auzty/item-app:v1