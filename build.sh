#!/bin/sh

if [[ ! -e src/backend ]]; then
    git clone https://github.com/Bartlomeij/image-carousel-backend.git src/backend
fi

if [[ ! -e src/backend ]]; then
    git clone https://github.com/Bartlomeij/image-carousel-frontend.git src/frontend
fi

docker-compose build
docker-compose up -d

# temp solution
echo "Wait 5 minutes..."
sleep 60
echo "Wait 4 minutes..."
sleep 60
echo "Wait 3 minutes..."
sleep 60
echo "Wait 2 minutes..."
sleep 60
echo "Wait 1 minutes..."
sleep 60
echo "Done."
