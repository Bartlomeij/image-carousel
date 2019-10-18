#!/bin/sh

if ! -e src/backend; then
    git clone https://github.com/Bartlomeij/image-carousel-backend.git src/backend
fi

if ! -e src/backend; then
    git clone https://github.com/Bartlomeij/image-carousel-frontend.git src/frontend
fi

docker-compose build
docker-compose up -d
