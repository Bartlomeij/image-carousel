#!/bin/sh

if ! src/backend; then
    git clone https://github.com/Bartlomeij/image-carousel-backend.git src/backend
fi

if ! src/backend; then
    git clone https://github.com/Bartlomeij/image-carousel-frontend.git src/frontend
fi

echo "Done"

docker-compose build
docker-compose up -d
